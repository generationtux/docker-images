FROM php:7.1
ADD install_composer.sh /tmp
RUN apt-get update && \
    apt-get install -y wget && \
    sh /tmp/install_composer.sh && \ 
    wget https://github.com/generationtux/par/releases/download/v0.0.2/par_linux_amd64 --quiet && \
    mv par_linux_amd64 par && \
    chmod +x ./par && \
    mv ./par /usr/local/bin/ && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
