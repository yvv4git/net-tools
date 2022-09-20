FROM ubuntu:22.04

RUN apt-get update \
    && apt-get install -y openssh-server \
    && apt-get install -y net-tools lsof dnsutils iputils-tracepath \
    && apt-get install -y vim git\
    && apt-get install -y nmap netcat curl iputils-ping

COPY scripts /app/scripts

WORKDIR /app/

CMD tail -f /dev/null