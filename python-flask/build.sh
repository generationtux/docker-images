# Python Docker Image for Flask
## This base image was created for our Flask services.

docker build --no-cache -t gentux/python-flask -f ./Dockerfile . && \
docker push gentux/python-flask
