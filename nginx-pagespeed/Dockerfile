# NGINX
# gentux/nginx-pagespeed

FROM debian:jessie


ENV NPS_VERSION=1.10.33.6
ENV NGINX_VERSION=1.8.1

# Dependencies
RUN apt-get update \
    && apt-get install -y build-essential zlib1g-dev libpcre3 libpcre3-dev unzip wget

# Page Speed
RUN cd /tmp  \
    && NPS_VERSION=1.10.33.6 \
    && wget https://github.com/pagespeed/ngx_pagespeed/archive/release-${NPS_VERSION}-beta.zip -O release-${NPS_VERSION}-beta.zip \
    && unzip release-${NPS_VERSION}-beta.zip \
    && cd ngx_pagespeed-release-${NPS_VERSION}-beta \
    && wget https://dl.google.com/dl/page-speed/psol/${NPS_VERSION}.tar.gz \
    && tar -xzvf ${NPS_VERSION}.tar.gz


# NGNIX
RUN cd /tmp \
    && wget http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz \
    && tar -xvzf nginx-${NGINX_VERSION}.tar.gz \
    && cd nginx-${NGINX_VERSION} \
    && ./configure --add-module=/tmp/ngx_pagespeed-release-${NPS_VERSION}-beta \
        --prefix=/usr/share/nginx \
        --sbin-path=/usr/sbin/nginx \
        --conf-path=/etc/nginx/nginx.conf \
        --pid-path=/var/run/nginx.pid \
        --lock-path=/var/lock/nginx.lock \
        --error-log-path=/var/log/nginx/error.log \
        --http-log-path=/var/log/access.log \
        --user=www-data \
        --group=www-data \
    && make \
    && make install

# Clean up
RUN apt-get remove -y build-essential zlib1g-dev libpcre3-dev unzip \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /tmp/ngx_pagespeed-release-${NPS_VERSION}-beta \
    && rm -rf /tmp/nginx-${NGINX_VERSION}


# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
