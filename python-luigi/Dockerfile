FROM python:3.6

RUN apt-get update && \
  apt-get install -y build-essential python python-dev python-pip mysql-client python-mysqldb libmysqlclient-dev libffi-dev libssl-dev libpq-dev git cron


RUN mkdir /opt/data-warehouse/
# Add current directory to PYTHONPATH
ENV PYTHONPATH /opt/data-warehouse/

# Clean-up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
