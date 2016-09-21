FROM debian:jessie

RUN apt-get update && \
    apt-get install -y openssl \
                       ca-certificates \
                       curl \
                       libmcrypt-dev \
                       libxml2 \
                       libedit2 \
                       libsqlite3-0 \
                       xz-utils \
                       php5-fpm \
                       php5-mcrypt \
                       php5-mysql \
                       php5-pgsql \
                       php5-memcached \
                       php5-xdebug && \
                       sudo && \
    apt-get clean && apt-get autoremove && \
    rm -rf /usr/share/locale/* && \
    rm -rf /var/cache/debconf && mkdir -p /var/cache/debconf && \
    rm -rf /var/lib/apt/lists/* && mkdir -p /var/lib/apt/lists/partial

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

ADD ./docker-php-* /usr/local/bin/
RUN docker-php-ext-install mcrypt pdo_mysql mbstring pdo_pgsql

ADD ./php-fpm.conf /etc/php5/fpm/php-fpm.conf

EXPOSE 9000

CMD ["php-fpm"]
