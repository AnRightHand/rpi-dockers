FROM resin/raspberrypi3-alpine:edge

LABEL AUTHOR=AnRightHand

ENV ARIA2_VERSION=1.34.0
ENV ARIA2_URL=https://github.com/q3aql/aria2-static-builds/releases/download/v${ARIA2_VERSION}/aria2-${ARIA2_VERSION}-linux-gnu-arm-rbpi-build1.tar.bz2

WORKDIR /app

RUN apk --update --no-cache add bash curl tar \
  && curl -sSL $ARIA2_URL | tar xj -C /app aria2-${ARIA2_VERSION}-linux-gnu-arm-rbpi-build1/aria2c \
  && touch /app/session.lock \
  && chmod +x /app/aria2c
  
VOLUME /config

#COPY aria2.conf /config/aria2.conf 

EXPOSE 6800

CMD /app/aria2c --conf-path=/config/aria2.conf
