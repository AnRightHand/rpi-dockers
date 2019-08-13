FROM resin/raspberrypi3-alpine:edge

LABEL AUTHOR=AnRightHand

ENV FILE_BROWSER_VERSION=v2.0.12
ENV FILE_BROWSER_URL=https://github.com/filebrowser/filebrowser/releases/download/${FILE_BROWSER_VERSION}/linux-armv7-filebrowser.tar.gz

WORKDIR /app

RUN apk --update --no-cache add bash curl tar && \
  curl -sSL $FILE_BROWSER_URL | tar -zx -C /app && \
##  tar -zxf linux-armv7-filebrowser.tar.gz && \
##  rm linux-armv7-filebrowser.tar.gz && \
  chmod +x /app/filebrowser
  
RUN curl -sSL -o /app/filebrowser.json https://github.com/AnRightHand/rpi-dockers/raw/master/filebrowser/filebrowser.json && \
  mv -n /app/filebrowser.json /config/.filebrowser.json 
  
EXPOSE 80 443

#CMD ["/app/filebrowser","--config /.filebrowser.json"]
CMD /app/filebrowser --config /.filebrowser.json
