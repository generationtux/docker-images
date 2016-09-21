FROM php:5.6-fpm-alpine

RUN apt-get update && apt-get install -y libmcrypt-dev \
                                         mysql-client \
                                         postgresql-server-dev-9.4 \
                                         cron && \
    apt-get clean && apt-get autoremove && \
    rm -rf /usr/share/locale/* && \
    rm -rf /var/cache/debconf && mkdir -p /var/cache/debconf && \
    rm -rf /var/lib/apt/lists/* && mkdir -p /var/lib/apt/lists/partial

COPY ./php-fpm.conf /etc/php5/fpm/php-fpm.conf

EXPOSE 9000

CMD ["php-fpm"]
