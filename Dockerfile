FROM openjdk:7

RUN apt-get update && apt-get upgrade
#RUN apt-get install software-properties-common

WORKDIR /minecraft

RUN wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar
RUN java -Xmx1024M -Xms1024M -jar minecraft_server.1.15.2.jar nogui

EXPOSE 25565