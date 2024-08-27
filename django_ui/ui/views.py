import asyncio
import os

from django.http import FileResponse, HttpResponse
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from test import predict_saved_file
from .models import File
from .serializers import *

from rest_framework_swagger.views import get_swagger_view


@api_view(['GET'])
def main_page(request):
    if request.method == 'GET':
        data = User.objects.all()

        serializer = UserSerializer(data, context={'request': request}, many=True)

        return Response(serializer.data)


@api_view(['POST'])
def audio_out(request):
    if request.method == 'POST' and request.FILES.get('audio'):
        audio_file = request.FILES['audio']
        # TODO save files with usernames

        # username = request.user.username  # Assuming user is authenticated and you're using Django's authentication system
        #
        # save_dir = os.path.join('C:\\Users\\Andras\\Desktop\\work\\MASZ\\SER-SpeechMaster\\data\\test-custom', username)
        # os.makedirs(save_dir, exist_ok=True)
        #
        # count =
        #
        # save_path_audio = os.path.join(save_dir, f'audio_{count}.wav')
        # save_path_video = os.path.join(save_dir, f'video_{count}.mp4')

        save_path_audio = os.path.join('C:\\Users\\Andras\\Desktop\\work\\MASZ\\SER-SpeechMaster\\data\\test-custom',
                                       'audio.wav')
        save_path_video = os.path.join('C:\\Users\\Andras\\Desktop\\work\\MASZ\\SER-SpeechMaster\\django_ui',
                                       'movie.mp4')
        if os.path.exists(save_path_audio):
            os.remove(save_path_audio)
        if os.path.exists(save_path_audio[:-4] + '_c.wav'):
            os.remove(save_path_audio[:-4] + '_c.wav')
        with open(save_path_audio, 'wb+') as destination:
            for chunk in audio_file.chunks():
                destination.write(chunk)

        predict_saved_file(save_path_audio)

        if not os.path.exists(save_path_video):
            return Response({"error": "Failed to create the video"}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

        # TODO Save metadata about the video file in the database
        # File.objects.create(name='video.mp4', file_path=save_path_video, file_type='video')
        return Response(status=status.HTTP_200_OK)

    else:
        return Response(status=status.HTTP_400_BAD_REQUEST)


@api_view(['GET'])
def serve_video(request):
    video_path = 'C:\\Users\\Andras\\Desktop\\work\\MASZ\\SER-SpeechMaster\\django_ui\\movie.mp4'
    if os.path.exists(video_path):
        open(video_path, 'rb')
        return FileResponse(open(video_path, 'rb'), content_type='video/mp4')
    else:
        # Handle case where video file does not exist
        return HttpResponse(status=404)
