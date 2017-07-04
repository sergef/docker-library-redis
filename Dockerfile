FROM sergef/docker-library-alpine:edge

EXPOSE 6379

COPY entrypoint.sh /entrypoint.sh

RUN apk add --no-cache \
    redis \
  && chmod +x /entrypoint.sh

ENTRYPOINT ["tini", "--", "/entrypoint.sh"]
