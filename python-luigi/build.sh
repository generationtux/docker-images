# Python Docker Image for Luigi
## This base image was created for our Luigi Data Warehouse project.

docker build --no-cache -t gentux/python-luigi -f ./Dockerfile . && \
docker push gentux/python-luigi
