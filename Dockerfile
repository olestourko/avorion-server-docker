FROM ubuntu
MAINTAINER Oles Tourko

# Get prereqs
RUN apt-get update
RUN apt-get install wget lib32gcc1 -y

# Create steam user
RUN adduser steam
RUN echo 'steam:steam' | chpasswd
RUN su -ls /bin/bash steam
WORKDIR /home/steam
RUN mkdir steamcmd
WORKDIR ./steamcmd

# Download SteamCMD and get Avorion
RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
RUN tar xf steamcmd_linux.tar.gz
WORKDIR /home/steam
ENV PATH="/home/steam/steamcmd:${PATH}"
RUN mkdir avorion-server

RUN steamcmd.sh +login anonymous +force_install_dir /home/steam/avorion-server +app_update 565060 validate +exit
ENV SERVER_PATHNAME /home/steam/avorion-server/server.sh
ENV GALAXY_PATH /home/steam/avorion-server/shared/galaxies

# Open up Avorion's ports
EXPOSE 27000/udp
EXPOSE 27000/tcp
EXPOSE 27003/udp
EXPOSE 27020/udp
EXPOSE 27021/udp