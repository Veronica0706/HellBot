FROM debian:latest

RUN apt update && apt upgrade -y

RUN apt install git curl python3-pip ffmpeg -y

RUN pip3 install -U pip

RUN cd /

RUN git clone https://github.com/Veronica0706/HellBot

RUN cd HellBot

WORKDIR HellBot

RUN pip3 install -U -r requirements.txt

PROCFILE python3 bash Hellbot
