# Dockerfile, Image, Container
FROM python:3.9

ADD main.py .

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    tzdata \
    libssl-dev \
    openssl \
    zlib1g-dev \
    build-essential \
    checkinstall \
    libffi-dev \
    libsqlite3-dev \
    vim \
    curl \
    make \
    sudo \
    python3-pip \
    python3-pygame \
    libsdl1.2-dev \
    libsdl-image1.2-dev \
    libsdl-mixer1.2-dev \
    libsdl-sound1.2-dev \
    libsdl-ttf2.0-dev \
    libsdl2-dev \
    libsdl2-image-dev \
    libsdl2-mixer-dev \
    libsdl2-ttf-dev \
    libsdl2-gfx-dev \
    libsdl2-net-dev

# install x11
RUN apt install -qqy x11-apps

# install pygame
RUN pip3 install pygame

CMD [ "python3", "./main.py" ]