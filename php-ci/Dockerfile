FROM gentux/php-laravel:latest
RUN apt-get update

RUN apt-get install -y postgresql-client
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer
RUN apt-get install -y wget
RUN wget https://github.com/generationtux/par/releases/download/v0.0.2/par_linux_amd64
RUN mv par_linux_amd64 par
RUN chmod +x ./par
RUN mv ./par /usr/local/bin/
