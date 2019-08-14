FROM resin/raspberrypi3-alpine:edge

LABEL AUTHOR=AnRightHand

# install minidlna
RUN apk --no-cache add minidlna curl

EXPOSE 1900/udp
EXPOSE 8200

VOLUME /config

CMD /usr/sbin/minidlnad -f /config/minidlna.conf -S

#RUN curl -sSL -o /app/run.sh https://raw.githubusercontent.com/AnRightHand/rpi-dockers/master/minidlna/run.sh && chmod +x /app/run.sh

#CMD /app/run.sh