import os.path

from UDPclient import send_udp
from deep_emotion_recognition import DeepEmotionRecognizerRNN, DeepEmotionRecognizerCNN

if __name__ == "__main__":
    print("Starting\n")
    # initialize instance
    # inherited from emotion_recognition.EmotionRecognizer
    # default parameters (LSTM: 128x2, Dense:128x2)
    deeprec = DeepEmotionRecognizerCNN(emotions=['angry', 'sad', 'neutral', 'happy'], n_cnn_layers=2, cnn_units=128, epochs=200)
    print("Train the model\n")
    deeprec.train()
    # get the accuracy
    print(deeprec.test_score())
    # predict angry audio sample
    # if os.path.exists('data/test-custom/audio.wav'):
    prediction = deeprec.predict('data/training/Actor_01/01_01_01_01_dogs-sitting_disgust.wav')
    print(f"Prediction: {prediction}")
    full_prediction = deeprec.predict_proba('data/training/Actor_01/01_01_01_01_dogs-sitting_disgust.wav')
    print(f"Full prediction: {full_prediction}")
    send_udp(full_prediction)
    # else:
    #     print(f"File not existent.")
