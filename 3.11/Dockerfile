FROM alpine:3.11

MAINTAINER Sebastian Kalicki (https://github.com/kalicki2k)

ARG timezone=Europe/Berlin

COPY Dockerfiles /

RUN apk update && apk upgrade && \
    apk add bash tzdata && \
    bash /docker-utils/set_tz.sh $timezone && \
    rm -Rf /docker-utils && \
    rm -rf /var/cache/apk/*
