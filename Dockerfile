FROM alpine:edge

MAINTAINER Serge Fomin <serge.fo@gmail.com>

# Full list of mirrors can be found here http://rsync.alpinelinux.org/alpine/MIRRORS.txt
ENV APK_MIRROR http://mirror.leaseweb.com

# Enabling main, community and testing alpine package repos
RUN echo "$APK_MIRROR/alpine/edge/main" > /etc/apk/repositories
RUN echo "@community $APK_MIRROR/alpine/edge/community" >> /etc/apk/repositories
RUN echo "@testing $APK_MIRROR/alpine/edge/testing" >> /etc/apk/repositories

EXPOSE 6379

RUN apk update \
  && apk add \
    redis

RUN rm -rf /tmp/* /var/cache/apk/*

ENTRYPOINT redis-server
