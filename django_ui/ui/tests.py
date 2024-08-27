from django.test import TestCase
from django.urls import reverse
from django.core.files.uploadedfile import SimpleUploadedFile
from rest_framework import status

class AudioOutTestCase(TestCase):
    def test_audio_out_success(self):
        # Prepare a mock audio file for upload
        with open(
                'C:\\Users\\Andras\\Desktop\\work\\MASZ\\SER-SpeechMaster\\data\\training\\Actor_01\\01_01_01_01_dogs'
                '-sitting_disgust.wav',
                'rb') as f:
            audio_file = SimpleUploadedFile('test_audio.wav', f.read(), content_type='audio/wav')

        # Make a POST request to the audio_out endpoint
        response = self.client.post(reverse('audio_out'), {'audio': audio_file})

        # Check that the response status code is 200 (OK)
        self.assertEqual(response.status_code, status.HTTP_200_OK)

        # Add more assertions if needed

    def test_audio_out_missing_file(self):
        # Make a POST request without an audio file
        response = self.client.post(reverse('audio_out'))

        # Check that the response status code is 400 (Bad Request)
        self.assertEqual(response.status_code, status.HTTP_400_BAD_REQUEST)

        # Add more assertions if needed

# class ServeVideoTestCase(TestCase):
#     def test_serve_video_success(self):
#         # Make a GET request to the serve_video endpoint
#         response = self.client.get(reverse('serve_video'))
#
#         # Check that the response status code is 200 (OK)
#         self.assertEqual(response.status_code, status.HTTP_200_OK)
#
#         # Check that the response contains the video content
#         self.assertTrue(response.streaming_content)
#
#         # Add more assertions if needed
#
#     def test_serve_video_missing_file(self):
#         # Make a GET request when the video file does not exist
#         response = self.client.get(reverse('serve_video'))
#
#         # Check that the response status code is 404 (Not Found)
#         self.assertEqual(response.status_code, status.HTTP_404_NOT_FOUND)
#
#         # Add more assertions if needed
