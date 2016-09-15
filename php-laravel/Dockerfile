FROM debian:jessie

RUN apt-get update && apt-get install -y php5-fpm php5-mcrypt php5-mysql php5-pgsql php5-memcached php5-xdebug && \
    apt-get clean && apt-get autoremove && \
    rm -rf /usr/share/locale/* && \
    rm -rf /var/cache/debconf && mkdir -p /var/cache/debconf && \
    rm -rf /var/lib/apt/lists/* && mkdir -p /var/lib/apt/lists/partial

ADD ./php-fpm.conf /etc/php5/fpm/php-fpm.conf

CMD ["php5-fpm"]
