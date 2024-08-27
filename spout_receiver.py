import asyncio
import os
import time

import cv2
import numpy as np
import pygame
import SpoutGL
from OpenGL.GL import *
import vidmaker

global is_recording

DISPLAY_WIDTH = 640
DISPLAY_HEIGHT = 640
SENDER_NAME = "spoutSender"
FULLPATH = "C:\\Users\\Andras\\Desktop\\work\\MASZ\\SER-SpeechMaster\\pygame_images"

def setProjection(width, height):
    glMatrixMode(GL_PROJECTION)
    glLoadIdentity()
    glOrtho(0, width, height, 0, 1, -1)
    glMatrixMode(GL_MODELVIEW)

def drawSquare(width, height):
    glEnable(GL_TEXTURE_2D)
    glBegin(GL_QUADS)

    glTexCoord(0, 0)
    glVertex2f(0, 0)

    glTexCoord(1, 0)
    glVertex2f(width, 0)

    glTexCoord(1, 1)
    glVertex2f(width, height)

    glTexCoord(0, 1)
    glVertex2f(0, height)

    glEnd()
    glDisable(GL_TEXTURE_2D)

def delete_old_files():
    file_list = os.listdir(FULLPATH)
    for file_name in file_list:
        file_path = os.path.join(FULLPATH, file_name)
        os.remove(file_path)

async def start_spout(surface):
    receiver = SpoutGL.SpoutReceiver()
    receiver.setReceiverName(SENDER_NAME)
    buffer = None
    width = 640
    height = 640
    count = 0
    start_time = time.time()

    delete_old_files()

    while time.time() - start_time < 15:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()

        result = receiver.receiveTexture(receiveTextureID, GL_TEXTURE_2D, False, 0)
        if receiver.isUpdated():
            width = receiver.getSenderWidth()
            height = receiver.getSenderHeight()

            glBindTexture(GL_TEXTURE_2D, receiveTextureID)
            glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, None)
            setProjection(width, height)

        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

        glActiveTexture(GL_TEXTURE0)
        glBindTexture(GL_TEXTURE_2D, receiveTextureID)
        drawSquare(width, height)
        pygame.display.flip()

        count += 1
        path = FULLPATH + "\\capture" + "%08d.png" % count
        save_opengl_content(width, height, path)

def save_opengl_content(width, height, path):
    data = glReadPixels(0, 0, width, height, GL_RGBA, GL_UNSIGNED_BYTE)
    image = pygame.image.fromstring(data, (width, height), 'RGBA')
    image = pygame.transform.flip(image, False, True)
    pygame.image.save(image, path)

def make_mp4():
    image_files = sorted([f for f in os.listdir(FULLPATH) if f.endswith('.png')])
    start_number = 3
    command = f"ffmpeg -r 24 -start_number {start_number} -i {FULLPATH}\\capture%08d.png -t 10 -vcodec libx264 -crf 18 -preset medium -y movie.mp4"
    os.system(command)

def cleanup():
    global receiveTextureID
    try:
        if receiveTextureID:
            glDeleteTextures([receiveTextureID])
    except:
        pass
    pygame.display.quit()
    pygame.quit()

def main():
    global receiveTextureID

    pygame.init()
    pygame.display.set_caption('Texture Receiver Example')
    surface = pygame.display.set_mode((DISPLAY_WIDTH, DISPLAY_HEIGHT), pygame.OPENGL | pygame.DOUBLEBUF)

    receiveTextureID = glGenTextures(1)
    glBindTexture(GL_TEXTURE_2D, receiveTextureID)
    glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE)
    glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE)
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR)
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR)
    glCopyTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 0, 0, DISPLAY_WIDTH, DISPLAY_HEIGHT, 0)

    setProjection(DISPLAY_WIDTH, DISPLAY_HEIGHT)
    glClearColor(0.0, 0.0, 0.0, 1.0)

    try:
        asyncio.run(start_spout(surface))
    finally:
        make_mp4()
        cleanup()

if __name__ == "__main__":
    main()
