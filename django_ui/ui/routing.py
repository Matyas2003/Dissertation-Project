from channels.routing import ProtocolTypeRouter, URLRouter
from django.urls import path
from .consumer import VideoConsumer

application = ProtocolTypeRouter({
    "websocket": URLRouter([
        path("ws/video/", VideoConsumer.as_asgi()),
    ]),
})