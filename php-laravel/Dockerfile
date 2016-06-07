# https://github.com/docker-library/docs/blob/master/php/README.md
FROM php:5.5.30-fpm

# PHP extensions for Laravel
RUN apt-get update && apt-get install -y libmcrypt-dev mysql-client postgresql-server-dev-9.4
RUN docker-php-ext-install mcrypt pdo_mysql mbstring pdo_pgsql

WORKDIR /var/www
