FROM php:8-fpm-alpine

#ADD ./php/www.conf /usr/local/etc/php-fpm.d/www.conf

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

RUN mkdir -p /var/www/html

RUN chown laravel:laravel /var/www/html

#WORKDIR /var/www/html

RUN apk add --update libsodium-dev

RUN apk add --no-cache libpng-dev zlib-dev libzip-dev \
&& docker-php-ext-configure zip \
&& docker-php-ext-install zip

RUN docker-php-ext-install pdo pdo_mysql

ENV PHP_VERSION 8
ENV PHP_MEMORY_LIMIT=1G