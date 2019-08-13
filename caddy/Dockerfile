FROM resin/raspberrypi3-alpine:edge

LABEL AUTHOR=AnRightHand

RUN apk add curl bash \
        && curl https://getcaddy.com | bash -s personal http.webdav 
VOLUME /config

RUN mkdir /app &&  curl -sSL -o /app/Caddyfile https://raw.githubusercontent.com/AnRightHand/rpi-dockers/master/caddy/Caddyfile && \
  mv -n /app/Caddyfile /config/Caddyfile

CMD [ "caddy","-conf","/config/Caddyfile" ]
