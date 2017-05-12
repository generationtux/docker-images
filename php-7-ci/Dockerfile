FROM php:7-alpine
ENV COMPOSER_ALLOW_SUPERUSER 1
ADD install_composer.sh /tmp
RUN apk add --update --no-cache git unzip wget zip && \
    /tmp/install_composer.sh && \
    composer global require hirak/prestissimo && \
    wget https://github.com/generationtux/par/releases/download/v0.0.2/par_linux_amd64 --quiet && \
    mv par_linux_amd64 par && \
    chmod +x ./par && \
    mv ./par /usr/local/bin/ && \
    rm -rf /tmp
