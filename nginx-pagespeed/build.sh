docker build -t gentux/nginx-pagespeed -t gentux/nginx-pagespeed:1.8.1 -f ./Dockerfile . && \
docker push gentux/nginx-pagespeed && \
docker push gentux/nginx-pagespeed:1.8.1
