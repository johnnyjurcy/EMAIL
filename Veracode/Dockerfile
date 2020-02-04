FROM openjdk:8-jdk-alpine
LABEL maintainer="miskra3@dxc.com"

RUN apk add --no-cache curl zip bash

RUN curl -s -o /tmp/veracode.zip https://repo1.maven.org/maven2/com/veracode/vosp/api/wrappers/vosp-api-wrappers-java/19.6.5.8/vosp-api-wrappers-java-19.6.5.8-dist.zip
RUN cd /tmp && unzip -o veracode.zip VeracodeJavaAPI.jar && mv VeracodeJavaAPI.jar /
