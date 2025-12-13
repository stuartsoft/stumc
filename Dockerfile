FROM alpine:latest

ARG domain=https://packages.adoptium.net

WORKDIR /etc/apk/
RUN apk add curl
RUN curl $domain/artifactory/api/security/keypair/public/repositories/apk --output keys/adoptium.rsa.pub
RUN echo $domain/artifactory/apk/alpine/main >> repositories
RUN apk add temurin-25-jre
WORKDIR /mcdata
ENTRYPOINT ["java", "-Xmx8192M", "-Xms4096M", "-jar", "/runthis.jar"]