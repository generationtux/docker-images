# GenTux Default Backend for Kubernetes Ingress

This container will be used to display errors from the [Kubernetes Ingress Controller](http://kubernetes.io/docs/user-guide/ingress/) when things get funny.

It accepts web requests and returns a formatted error page. The container must follow these rules:

- Return HTML by default, JSON if the the incoming `X-Format` header is `json`
- Return the response code as what's specified in the incoming request header `X-Code`
- The path `/healthz` should always return `200`
