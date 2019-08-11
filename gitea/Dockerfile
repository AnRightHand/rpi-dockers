FROM resin/raspberrypi3-alpine:edge

LABEL AUTHOR=AnRightHand


EXPOSE 22 3000

#RUN [ "cross-build-start" ]

## GITEA RELEASE VERSION
ENV VERSION 1.9.0

RUN apk --no-cache add \
    bash \
    ca-certificates \
    curl \
    gettext \
    git \
    linux-pam \
    openssh \
#    s6 \
    sqlite \
    su-exec \
    tzdata

RUN addgroup \
    -S -g 1000 \
    git && \
  adduser \
    -S -H -D \
    -h /data/git \
    -s /bin/bash \
    -u 1000 \
    -G git \
    git && \
  echo "git:$(dd if=/dev/urandom bs=24 count=1 status=none | base64)" | chpasswd

ENV USER git
ENV GITEA_CUSTOM /data/gitea

USER git
WORKDIR /app
## GET GITEA
RUN curl -SLo /app/gitea https://github.com/go-gitea/gitea/releases/download/v$VERSION/gitea-$VERSION-linux-arm-6 && \
    chmod +x /app/gitea

VOLUME ["/data"]

#RUN ln -s /app/gitea/gitea /usr/local/bin/gitea

#ENTRYPOINT ["/usr/bin/entrypoint"]
#CMD ["/bin/s6-svscan", "/etc/s6"]

CMD /app/gitea web
