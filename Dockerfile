FROM alpine:3.6

MAINTAINER Sebastian Kalicki <sebastian@kalicki.email>

ARG timezone=Europe/Berlin

COPY Dockerfiles/. /

RUN apk update && apk upgrade && \
    apk add bash tzdata && \
    bash /docker-utils/set_tz.sh $timezone && \
    rm -Rf /docker-utils && \
    rm -rf /var/cache/apk/*
