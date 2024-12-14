FROM ubuntu:24.04

ARG jar

RUN apt-get update
RUN apt-get install wget -y
RUN wget https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.5%2B11/OpenJDK21U-jre_x64_linux_hotspot_21.0.5_11.tar.gz --output-document=openjre.tar.gz
RUN tar x -f openjre.tar.gz && rm openjre.tar.gz && mv jdk-21.0.5+11-jre Temurin
RUN ln -s /Temurin/bin/java /usr/local/bin/java
COPY ${jar} ./mc.jar
RUN mkdir mcdata
ENTRYPOINT cd /mcdata && /usr/local/bin/java -Xmx8192M -Xms4096M -jar /mc.jar nogui