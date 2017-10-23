FROM php:7-fpm-alpine

# app dependencies
RUN apk add --update --no-cache \
    "libmcrypt-dev" "postgresql-dev" "libpq" \
    && docker-php-ext-install \
        mbstring \
        mcrypt \
        opcache \
        pdo_mysql \
        pdo_pgsql \

        # needed for forking processes in laravel queues as of Laravel 5.3
        pcntl
