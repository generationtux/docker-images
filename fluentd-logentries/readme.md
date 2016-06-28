# Fluentd Logentries

Docker image for collecting logs with Fluentd and forwarding to Logentries.

### Usage

The following environment variables should be configured when running the container:

- `LE_APP_TOKEN` the Logentries token to use when sending logs
- `FILES_TO_COLLECT` a comma separated list of file paths to tail and forward to Logentries

For an example on how to use this image as a sidecar container in Kubernetes, see [the example here](https://github.com/kubernetes/contrib/tree/master/logging/fluentd-sidecar-gcp).
