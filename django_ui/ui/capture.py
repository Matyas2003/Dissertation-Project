import json
from channels.layers import get_channel_layer
from django.conf import settings

async def send_video_frames_to_clients(frame_data):
    if not settings.configured:
        settings.configure()
    channel_layer = get_channel_layer()
    # Assuming you have frame data as bytes or a similar format
    group_name = 'video_group'  # Name of the WebSocket group

    # Send the frame to all clients in the group
    await channel_layer.group_send(
        group_name,
        {
            'type': 'send.video.frame',
            'frame_data': frame_data,
        }
    )