FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
	apt-get install -y sudo build-essential git cmake autoconf libtool pkg-config gdb gdbserver

RUN useradd -ms /bin/bash dev
RUN echo "dev   ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers

USER dev
VOLUME "/home/dev/project"
WORKDIR "/home/dev/project"
