FROM python:3.5

RUN apt-get update && \
apt-get install -y build-essential libmysqlclient-dev python3-dev

ENV PYTHONUNBUFFERED 1

EXPOSE 8000

RUN mkdir /var/www

# Add current directory to PYTHONPATH
ENV PYTHONPATH /var/www

WORKDIR /var/www

ENTRYPOINT ["/var/www/deploy/entrypoint.sh"]
