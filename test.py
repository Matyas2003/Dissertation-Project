import asyncio

from UDPclient import send_udp
from deep_emotion_recognition import DeepEmotionRecognizerRNN
from emotion_recognition import EmotionRecognizer

import pyaudio
import wave
from sys import byteorder
from array import array
from struct import pack
import os

# from spout_receiver import send_frames_from_spout_to_consumer
from utils import get_best_estimators

THRESHOLD = 500
CHUNK_SIZE = 1024
FORMAT = pyaudio.paInt16
RATE = 16000

SILENCE = 30


def is_silent(snd_data):
    "Returns 'True' if below the 'silent' threshold"
    return max(snd_data) < THRESHOLD


def normalize(snd_data):
    "Average the volume out"
    MAXIMUM = 16384
    times = float(MAXIMUM) / max(abs(i) for i in snd_data)

    r = array('h')
    for i in snd_data:
        r.append(int(i * times))
    return r


def trim(snd_data):
    "Trim the blank spots at the start and end"

    def _trim(snd_data):
        snd_started = False
        r = array('h')

        for i in snd_data:
            if not snd_started and abs(i) > THRESHOLD:
                snd_started = True
                r.append(i)

            elif snd_started:
                r.append(i)
        return r

    # Trim to the left
    snd_data = _trim(snd_data)

    # Trim to the right
    snd_data.reverse()
    snd_data = _trim(snd_data)
    snd_data.reverse()
    return snd_data


def add_silence(snd_data, seconds):
    "Add silence to the start and end of 'snd_data' of length 'seconds' (float)"
    r = array('h', [0 for i in range(int(seconds * RATE))])
    r.extend(snd_data)
    r.extend([0 for i in range(int(seconds * RATE))])
    return r


def record():
    """
    Record a word or words from the microphone and 
    return the data as an array of signed shorts.

    Normalizes the audio, trims silence from the 
    start and end, and pads with 0.5 seconds of 
    blank sound to make sure VLC can play
    it without getting chopped off.
    """
    p = pyaudio.PyAudio()
    stream = p.open(format=FORMAT, channels=1, rate=RATE,
                    input=True, output=True,
                    frames_per_buffer=CHUNK_SIZE)

    num_silent = 0
    snd_started = False

    r = array('h')
    while 1:
        # little endian, signed short
        snd_data = array('h', stream.read(CHUNK_SIZE))
        if byteorder == 'big':
            snd_data.byteswap()
        r.extend(snd_data)

        silent = is_silent(snd_data)

        if silent and snd_started:
            num_silent += 1
        elif not silent and not snd_started:
            snd_started = True

        if snd_started and num_silent > SILENCE:
            break
    sample_width = p.get_sample_size(FORMAT)
    stream.stop_stream()
    stream.close()
    p.terminate()

    r = normalize(r)
    r = trim(r)
    r = add_silence(r, 0.5)
    return sample_width, r


def record_to_buffer(curr_detector):
    "Records from the microphone and constantly sends the resulting data to the udp_server"
    try:
        while 1:
            buffer_name = "buffer.wav"
            record_to_file(buffer_name, curr_detector)
    except KeyboardInterrupt:
        exit()


def record_to_file(path, curr_detector):
    "Records from the microphone and outputs the resulting data to 'path'"
    sample_width, data = record()
    data = pack('<' + ('h' * len(data)), *data)

    wf = wave.open(path, 'wb')
    wf.setnchannels(1)
    wf.setsampwidth(sample_width)
    wf.setframerate(RATE)
    wf.writeframes(data)
    wf.close()
    full_result = curr_detector.predict_proba(path)
    print(full_result)
    send_udp(full_result)


def get_estimators_name(estimators):
    result = ['"{}"'.format(estimator.__class__.__name__) for estimator, _, _ in estimators]
    return ','.join(result), {estimator_name.strip('"'): estimator for estimator_name, (estimator, _, _) in
                              zip(result, estimators)}


def predict_saved_file(file_path, emotions="sad,neutral,happy",
                       model="BaggingClassifier".format(get_estimators_name(get_best_estimators(True))[0])):
    curr_estimators = get_best_estimators(True)
    curr_estimators_str, curr_estimator_dict = get_estimators_name(curr_estimators)

    curr_features = ["mfcc", "chroma", "mel"]
    curr_detector = EmotionRecognizer(model=curr_estimator_dict[model], emotions=emotions.split(","),
                                      features=curr_features,
                                      verbose=0)

    curr_detector.train()
    print("Test accuracy score: {:.3f}%".format(curr_detector.test_score() * 100))

    # asyncio.run(send_frames_from_spout_to_consumer())
    full_result = curr_detector.predict_proba(file_path)
    print(full_result)
    send_udp(full_result)

def predict(path='test.wav', emotions="sad,neutral,happy",
            model="BaggingClassifier".format(get_estimators_name(get_best_estimators(True))[0])):
    curr_estimators = get_best_estimators(True)
    curr_estimators_str, curr_estimator_dict = get_estimators_name(curr_estimators)

    curr_features = ["mfcc", "chroma", "mel"]
    curr_detector = EmotionRecognizer(model=curr_estimator_dict[model], emotions=emotions.split(","),
                                      features=curr_features,
                                      verbose=0)

    curr_detector.train()
    print("Test accuracy score: {:.3f}%".format(curr_detector.test_score() * 100))

    record_to_file(path, curr_detector)


if __name__ == "__main__":
    estimators = get_best_estimators(True)
    estimators_str, estimator_dict = get_estimators_name(estimators)
    import argparse

    parser = argparse.ArgumentParser(description="""
                                        Testing emotion recognition system using your voice,
                                        please consider changing the model and/or parameters as you wish.
                                        """)
    parser.add_argument("-e", "--emotions", help="""
                                                Emotions to recognize separated by a comma ',', available emotions are
                                                "neutral", "calm", "happy" "sad", "angry", "fear", "disgust", "ps" (pleasant
                                                surprise) and "boredom", default is "sad,neutral,happy"
                                                """, default="sad,neutral,happy")
    parser.add_argument("-m", "--model", help="""
                                            The model to use, 8 models available are: {},
                                            default is "BaggingClassifier"
                                            """.format(estimators_str), default="BaggingClassifier")

    # Parse the arguments passed
    args = parser.parse_args()

    features = ["mfcc", "chroma", "mel"]
    detector = EmotionRecognizer(model=estimator_dict[args.model], emotions=args.emotions.split(","), features=features,
                                 verbose=0)
    detector.train()
    print("Test accuracy score: {:.3f}%".format(detector.test_score() * 100))
    print("1: Save to file\n2: Real-time response\n")
    x = input("Please select if you want to save to file or it is a real-time response: ")
    if x == '1':
        print("Please talk")
        record_to_file('test.wav', detector)
    if x == '2':
        print("Please talk, if you want to exit the program press Ctrl+C")
        record_to_buffer(detector)
