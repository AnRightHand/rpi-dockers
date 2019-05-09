FROM resin/raspberrypi3-alpine:edge

LABEL AUTHOR=AnRightHand

#RUN apt-get install unzip
RUN apk add --no-cache wget bash gnupg

ENV BAIDUPCS_WEB_VERSION=3.6.7

WORKDIR /app

RUN wget https://github.com/liuzhuoling2011/baidupcs-web/releases/download/${BAIDUPCS_WEB_VERSION}/BaiduPCS-Go-${BAIDUPCS_WEB_VERSION}-linux-arm.zip \
 && unzip BaiduPCS-Go-${BAIDUPCS_WEB_VERSION}-linux-arm.zip && rm BaiduPCS-Go-${BAIDUPCS_WEB_VERSION}-linux-arm.zip \
 && cd BaiduPCS-Go-${BAIDUPCS_WEB_VERSION}-linux-arm \
 && mv BaiduPCS-Go .. && cd .. \
 && mv BaiduPCS-Go baidupcs \
 && chmod +x baidupcs

EXPOSE 5299

CMD "/app/baidupcs"


