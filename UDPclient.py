import argparse
import time
import os, random
from pythonosc import udp_client

import spout_receiver


def send_udp(message):
    """
    Sending the SER results to the Max visualizer trough UDP client
    """

    # parser = argparse.ArgumentParser()
    # parser.add_argument("--ip", default="127.0.0.1")
    # parser.add_argument("--port", type=int, default=5005)
    # args = parser.parse_args()

    ip = "127.0.0.1"
    port = 5005

    chosen_img = random.choice(os.listdir("C:\\Users\\Andras\\Desktop\\work\\MASZ\\SER-SpeechMaster\\images\\landscapes"))
    img = f"read C:/Users/Andras/Desktop/work/MASZ/SER-SpeechMaster/images/landscapes/{chosen_img}, automatic 1, start"

    client = udp_client.SimpleUDPClient(ip, port)

    print(img)

    # print(message, type(message), "\n", "{:.3f}".format(message['happy']), "{:.3f}".format(message['neutral']), "{:.3f}".format(message['sad']))
    try:
        client.send_message("/sad", message['sad'])
    except Exception:
        client.send_message("/sad", 0.0)
    try:
        client.send_message("/neutral", message['neutral'])
    except Exception:
        client.send_message("/neutral", 0.0)
    try:
        client.send_message("/happy", message['happy'])
    except Exception:
        client.send_message("/happy", 0.0)
    try:
        client.send_message("/fear", message['fear'])
    except Exception:
        client.send_message("/fear", 0.0)
    try:
        client.send_message("/calm", message['calm'])
    except Exception:
        client.send_message("/calm", 0.0)
    try:
        client.send_message("/angry", message['angry'])
    except Exception:
        client.send_message("/angry", 0.0)
    try:
        client.send_message("/disgust", message['disgust'])
    except Exception:
        client.send_message("/disgust", 0.0)
    try:
        client.send_message("/ps", message['ps'])
    except Exception:
        client.send_message("/ps", 0.0)
    try:
        client.send_message("/boredom", message['boredom'])
    except Exception:
        client.send_message("/boredom", 0.0)

    client.send_message("/img", img)

    # # Start the video receiver
    spout_receiver.main()

    time.sleep(.1)
