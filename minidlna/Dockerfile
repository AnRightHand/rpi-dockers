FROM resin/raspberrypi3-alpine:edge

LABEL AUTHOR=aymtools

# install minidlna
RUN apk --no-cache add minidlna curl

EXPOSE 1900/udp
EXPOSE 8200

VOLUME /config

CMD /usr/sbin/minidlnad -f /config/minidlna.conf -S

#RUN mkdir -p /app && curl -sSL -o /app/minidlna.conf https://raw.githubusercontent.com/aymtools/rpi-dockers/master/minidlna/minidlna.conf && \ 
#  curl -sSL -o /app/run.sh https://raw.githubusercontent.com/aymtools/rpi-dockers/master/minidlna/run.sh && chmod +x /app/run.sh

#CMD /app/run.sh
