FROM gentux/php-laravel:latest
RUN apt-get update

RUN apt-get install -y postgresql-client
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "if (hash_file('SHA384', 'composer-setup.php') === 'aa96f26c2b67226a324c27919f1eb05f21c248b987e6195cad9690d5c1ff713d53020a02ac8c217dbf90a7eacc9d141d') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer
RUN apt-get install -y wget
RUN wget https://github.com/generationtux/par/releases/download/v0.0.2/par_linux_amd64
RUN mv par_linux_amd64 par
RUN chmod +x ./par
RUN mv ./par /usr/local/bin/