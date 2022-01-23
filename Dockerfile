FROM php:8.0.9-fpm-alpine

WORKDIR /var/www

RUN apk update

RUN addgroup -g 1000 -S www && \
    adduser -u 1000 -S www -G www

USER www

COPY --chown=www:www . /var/www

EXPOSE 9000