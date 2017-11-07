FROM alpine
ADD https://storage.googleapis.com/kubernetes-release/release/v1.7.4/bin/linux/amd64/kubectl /kubectl
RUN chmod +x /kubectl
ENTRYPOINT ["/kubectl"]
