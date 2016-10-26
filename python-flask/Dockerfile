FROM python:3.5

RUN apt-get update && \
apt-get install -y build-essential libmysqlclient-dev python3-dev

# Add current directory to PYTHONPATH
ENV PYTHONPATH .

ENV PYTHONUNBUFFERED 1

EXPOSE 8000

RUN mkdir /var/www
WORKDIR /var/www

ENTRYPOINT ["/var/www/deploy/entrypoint.sh"]
