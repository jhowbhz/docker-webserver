FROM php:7.4-fpm-alpine

WORKDIR /var/www

RUN apk update

RUN apk add --update \
		libpng-dev \
		libxml2-dev \
		libzip-dev \
		php7-json \
		php7-openssl \
		php7-pdo \
		php7-pdo_mysql \
		php7-session \
		php7-pcntl \
		php7-zip \
	&& docker-php-ext-install gd \
	&& docker-php-ext-install zip \
	&& docker-php-ext-install pdo \
	&& docker-php-ext-install pdo_mysql 

RUN set -x \
    && echo "https://repos.php.earth/alpine/v3.9" >> /etc/apk/repositories

RUN addgroup -g 1000 -S www && \
    adduser -u 1000 -S www -G www

USER www

COPY --chown=www:www . /var/www

EXPOSE 9000
