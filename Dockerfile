FROM php:7.2-fpm-alpine

WORKDIR /var/www

RUN apk update

ADD https://repos.php.earth/alpine/phpearth.rsa.pub /etc/apk/keys/phpearth.rsa.pub

ARG DEPS= 

#CASO QUEIRA HABILITAR AS EXTENSÕES
#ARG DEPS= "\
#        php7.4-phar \
#        php7.4-bcmath \
#        php7.4-calendar \
#        php7.4-mbstring \
#        php7.4-exif \
#        php7.4-ftp \
#        php7.4-openssl \
#        php7.4-zip \
#        php7.4-sysvsem \
#        php7.4-sysvshm \
#        php7.4-sysvmsg \
#        php7.4-shmop \
#        php7.4-sockets \
#        php7.4-zlib \
#        php7.4-bz2 \
#        php7.4-curl \
#        php7.4-simplexml \
#        php7.4-xml \
#        php7.4-opcache \
#        php7.4-dom \
#        php7.4-xmlreader \
#        php7.4-xmlwriter \
#        php7.4-tokenizer \
#        php7.4-ctype \
#        php7.4-session \
#        php7.4-fileinfo \
#        php7.4-iconv \
#        php7.4-json \
#        composer"

RUN set -x \
    && echo "https://repos.php.earth/alpine/v3.9" >> /etc/apk/repositories \
    && apk add --no-cache $DEPS 

RUN addgroup -g 1000 -S www && \
    adduser -u 1000 -S www -G www

USER www

COPY --chown=www:www . /var/www

EXPOSE 9000
