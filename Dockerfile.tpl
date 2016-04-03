FROM %DOCKER_REGISTRY%docker-library-alpine

MAINTAINER Serge Fomin <serge.fo@gmail.com>

EXPOSE 6379

RUN apk update \
  && apk add \
    redis

RUN rm -rf /tmp/* /var/cache/apk/*

ENTRYPOINT redis-server
