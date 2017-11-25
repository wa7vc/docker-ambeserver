#Download base image ubuntu 16.04
FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y wget gcc

WORKDIR /root/

RUN wget https://raw.githubusercontent.com/dl5di/OpenDV/master/DummyRepeater/DV3000/AMBEserver.c && \
    gcc -o AMBEserver AMBEserver.c && \
    rm AMBEserver.c

ENTRYPOINT /root/AMBEserver


