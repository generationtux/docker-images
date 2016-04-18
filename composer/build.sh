docker build -t gentux/composer:base -f ./base.docker . && \
docker push gentux/composer:base && \
docker build -t gentux/composer:php-5.6 -f ./master.docker . && \
docker push gentux/composer:php-5.6
