FROM resin/raspberrypi3-alpine:edge

LABEL AUTHOR=AnRightHand

ENV FILE_BROWSER_VERSION=v2.0.12
ENV FILE_BROWSER_URL=https://github.com/filebrowser/filebrowser/releases/download/${FILE_BROWSER_VERSION}/linux-armv7-filebrowser.tar.gz

#RUN apk --update --no-cache add bash curl tar \
#  && curl -sSL $FILE_BROWSER_URL | tar xj --strip 1 -C /usr/local/bin/ linux-armv7-filebrowser/filebrowser

WORKDIR /app

RUN apk --update --no-cache add bash curl tar \
  curl -sSL $FILE_BROWSER_URL \
  tar -zxf linux-armv7-filebrowser.tar.gz \
  chmod +x filebrowser
  
EXPOSE 80 443

CMD /app/filebrowser --config /.filebrowser.json
