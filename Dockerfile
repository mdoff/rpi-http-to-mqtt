FROM arm32v7/node:11-slim

MAINTAINER Tomasz Lewinski <mdoff@mdoff.net>

ENV AUTH_KEY $AUTH_KEY
ENV MQTT_HOST $MQTT_HOST
ENV MQTT_USER $MQTT_USER
ENV MQTT_PASS $MQTT_PASS

EXPOSE 5000

RUN apt-get update && apt-get -y install git
RUN mkdir /usr/app
WORKDIR /usr/app
RUN git clone https://github.com/petkov/http_to_mqtt.git ./
RUN npm install

RUN apt-get -y autoremove git
RUN apt-get -y clean

CMD node index.js
