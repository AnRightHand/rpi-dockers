FROM resin/raspberrypi3-alpine:edge

LABEL AUTHOR=AnRightHand

# install minidlna
RUN apk --no-cache add minidlna

EXPOSE 1900/udp
EXPOSE 8200

VOLUME /config

# Add config file
ADD minidlna.conf /config/minidlna.conf

#ENTRYPOINT [ "/usr/sbin/minidlnad", "-S" ]
CMD /usr/sbin/minidlnad -f /config/minidlna.conf -S