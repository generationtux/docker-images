FROM alpine
ADD https://storage.googleapis.com/kubernetes-release/release/v1.7.4/bin/linux/amd64/kubectl /kubectl
RUN apk add --update --no-cache bash && \
    chmod +x /kubectl
ENTRYPOINT ["/kubectl"]
