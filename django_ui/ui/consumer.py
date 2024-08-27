import asyncio
import json
import channels.layers

from channels.generic.websocket import AsyncWebsocketConsumer


class VideoConsumer(AsyncWebsocketConsumer):
    async def connect(self):
        self.group_name = 'video_group'  # Name of the WebSocket group

        # Add the client to the group
        await self.channel_layer.group_add(
            self.group_name,
            self.channel_name
        )

        await self.accept()

    async def disconnect(self, close_code):
        # Remove the client from the group
        await self.channel_layer.group_discard(
            self.group_name,
            self.channel_name
        )

    async def send_video_frame(self, event):
        frame_data = event['frame_data']

        # Send the video frame to the connected WebSocket client
        await self.send(text_data=json.dumps({
            'frame_data': frame_data,
        }))
