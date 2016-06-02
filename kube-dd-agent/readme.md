## Datadog Agent for Kubernetes

This docker image is for launching the [Datadog Agent](http://docs.datadoghq.com/guides/basic_agent_usage/) into a [Kubernetes](http://kubernetes.io/) cluster.

Datadog has an [officially supported docker image](https://github.com/DataDog/docker-dd-agent) that this is a fork of. The main issue this fork solves
is adding agent config files to the container through [Kube Secrets](http://kubernetes.io/docs/user-guide/secrets/). Datadog requires the files to be named with underscores, and currently
Kubernetes [is still in progress for allowing secrets to be named with underscores](https://github.com/kubernetes/kubernetes/pull/25458).

This image follows the [same convention as the base Datadog container image for configuration](https://github.com/DataDog/docker-dd-agent#enabling-integrations).
Mount all config files to `/conf.d` and `/checks.d` and the container will move the config files to the appropriate place for the agent to use.
The only difference is, instead of naming files with underscores `http_check.yaml`, you can name them with dashes `http-check.yaml` and the container
will rename them appropriately at runtime.
