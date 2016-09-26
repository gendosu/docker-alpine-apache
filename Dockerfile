# alpine-base
#
# VERSION               0.0.1

FROM      gendosu/alpine-base:3.3

MAINTAINER Gen Takahashi <gendosu@gmail.com>

RUN apk add --update \
    apache2 \
&&  rm -rf /var/cache/apk/*

RUN mkdir -p /run/apache2

CMD rm -rf /run/apache2/* || true && /usr/sbin/httpd -DFOREGROUND
