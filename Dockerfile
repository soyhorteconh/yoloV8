FROM ultralytics/ultralytics:latest

WORKDIR /root/yolov8

RUN apt update \
    && apt install sudo

RUN apt-get install -y \
    curl

ENV DEBIAN_FRONTEND=noninteractive

# load the Qt platform plugin "xcb"
RUN apt-get update && \
    apt-get install -y \
    qt5-default \
    libxcb-xinerama0-dev && \
    rm -rf /var/lib/apt/lists/*
