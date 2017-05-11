FROM php:7.1
RUN apt-get update

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer

RUN apt-get install -y wget
RUN wget https://github.com/generationtux/par/releases/download/v0.0.2/par_linux_amd64
RUN mv par_linux_amd64 par
RUN chmod +x ./par
RUN mv ./par /usr/local/bin/
