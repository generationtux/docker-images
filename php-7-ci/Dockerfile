FROM php:7.1
RUN apt-get update

RUN apt-get install -y wget
RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer -O - -q | php -- --quiet && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer

RUN wget https://github.com/generationtux/par/releases/download/v0.0.2/par_linux_amd64
RUN mv par_linux_amd64 par
RUN chmod +x ./par
RUN mv ./par /usr/local/bin/
