FROM php:5.6-fpm-alpine

RUN apt-get update && apt-get install -y \
        libmcrypt-dev

COPY ./php-fpm.conf /etc/php5/fpm/php-fpm.conf

EXPOSE 9000

CMD ["php-fpm"]
