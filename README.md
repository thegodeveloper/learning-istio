# Learning Istio

Notes about Istio.

## Enabling Istio Injection

```shell
kubectl label namespace default istio-injection=enabled
```

## Applications

### Sample Application - Fleet Management

- http://localhost:30080

### Kiali

- http://localhost:31000

### Jaeger UI

- http://localhost:31001

## Documentation

- [Istio Requests Timeouts](https://istio.io/docs/tasks/traffic-management/request-timeouts/)
- [Envoy Proxy](https://www.envoyproxy.io/)