FROM debian:stable-slim
LABEL maintainer="helmsmen@generationtux.com"
RUN apt-get update -y && apt-get install -y curl && \
    curl -O https://storage.googleapis.com/kubernetes-release/release/v1.8.4/bin/linux/amd64/kubectl && \
    mv kubectl /usr/local/bin/kubectl && chmod +x /usr/local/bin/kubectl && \
    rm -r /var/lib/apt/lists/*
CMD ["kubectl"]
