FROM debian:jessie

RUN apt-get update && \
    echo "deb http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list && \ 
    echo "deb-src http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list && \
    apt-get install -y wget && \
    wget https://www.dotdeb.org/dotdeb.gpg && \
    apt-key add dotdeb.gpg && \
    apt-get install -y ca-certificates cron curl php7.0-fpm php7.0-curl php7.0-cli php7.0-mcrypt php7.0-mysql php7.0-pgsql php7.0-xml && \
    apt-get clean && apt-get autoremove && \
    rm -rf /usr/share/locale/* && \
    rm -rf /var/cache/debconf && mkdir -p /var/cache/debconf && \
    rm -rf /var/lib/apt/lists/* && mkdir -p /var/lib/apt/lists/partial

ADD ./php-fpm.conf /etc/php/fpm/php-fpm.conf

EXPOSE 9000

CMD ["php-fpm7.0"]
