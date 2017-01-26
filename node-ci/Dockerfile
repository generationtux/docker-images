FROM node:latest

RUN apt-get update
RUN apt-get install -y wget
RUN wget https://github.com/generationtux/par/releases/download/v0.0.3/par_linux_amd64
RUN mv par_linux_amd64 par
RUN chmod +x ./par
RUN mv ./par /usr/local/bin/