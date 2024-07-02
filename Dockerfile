FROM ubuntu:latest

RUN apt update \
    && apt install python3 python3-pip ffmpeg -y
WORKDIR /Desktop/YoutubeBot

COPY . ./
RUN pip3 install -r requirements.txt --break-system-packages

CMD [ "python3", "./youtubebot.py" ]