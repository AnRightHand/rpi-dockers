FROM resin/raspberrypi3-alpine:edge

LABEL AUTHOR=AnRightHand

ENV SYNCTHING_VERSION=1.2.1
ENV SYNCTHING_URL=https://github.com/syncthing/syncthing/releases/download/v${SYNCTHING_VERSION}/syncthing-linux-arm-v${SYNCTHING_VERSION}.tar.gz

WORKDIR /app

RUN apk --update --no-cache add bash curl tar && \
  curl -sSL $SYNCTHING_URL | tar -zx -C /app && \
  mv /app/syncthing-linux-arm-v$SYNCTHING_VERSION/* /app && \
  rm -d /app/syncthing-linux-arm-v$SYNCTHING_VERSION && \
  chmod +x /app/syncthing
  
  
EXPOSE 8384 22000 21027/UDP
VOLUME /config /sync

CMD /app/syncthing -no-console -no-browser