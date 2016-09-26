# docker-alpine-apache

A Apache http server on Alpine docker container

It's on [docker-hub](https://hub.docker.com/r/gendosu/alpine-apache) and [github](https://github.com/gendosu/docker-alpine-apache)

## tags and links

 * `latest` [(Dockerfile)](https://github.com/gendosu/docker-alpine-apache/blob/master/Dockerfile) [![Build Status](https://travis-ci.org/gendosu/docker-alpine-apache.svg?branch=3.1)](https://travis-ci.org/gendosu/docker-alpine-apache)

## running

sample docker-compose.yml

```
version: "2"

services:

  main:
    image: gendosu/alpine-apache:latest

    volumes:
      - ".:/products"
      - "./html:/var/www/html"
      - "./apache2/conf.d:/etc/apache2/conf.d"
      - "./log:/var/log/apache2"

    environment:
      APACHE_LOG_DIR: "/var/log/apache2"

    ports:
      - "80:80"
```

Run container.

```sh
docker-compose up -d
```
