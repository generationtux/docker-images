FROM php:7.1
RUN apt-get update && \
    apt-get install -y wget && \
    wget https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer -O - -q | php -- --quiet && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer && \
    rm composer-setup.php && \
    wget https://github.com/generationtux/par/releases/download/v0.0.2/par_linux_amd64 && \
    mv par_linux_amd64 par && \
    chmod +x ./par && \
    mv ./par /usr/local/bin/ && \
    apt-get autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
