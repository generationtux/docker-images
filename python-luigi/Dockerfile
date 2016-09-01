FROM phusion/baseimage:0.9.16

# Phusion init process
CMD ["/sbin/my_init"]

# Packages
RUN apt-get update && \
  apt-get install -y build-essential python python-dev python-pip mysql-client-5.6 python-mysqldb libmysqlclient-dev libffi-dev libssl-dev libpq-dev

# Add current directory to PYTHONPATH
ENV PYTHONPATH .

# Clean-up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
