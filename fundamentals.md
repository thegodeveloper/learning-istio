# Fundamentals

## Cloud Computing Options

- IaaS: Infrastructure as a Service
- PaaS: Platform as a Service
- SaaS: Software as a Service
- Public Cloud
- Private Cloud
- Hybrid Cloud
- Community Cloud

## What is Istio?

Istio is a `Service Mesh`.

## What is a Service Mesh?

A `Service Mesh` is an extra layer of software you deploy alongside your cluster (eg. Kubernetes).

- In a `Microservice Architecture` imaging for now that one `Pod` (a microservice) needs to call other `Pod` (a microservice).
- In a normal communication between this two pods (microservices), one `Pod` communicates to the other using the `Service` that is representing the other `Pod`.
- Using a `Service Mesh`, the communication from one `Pod` doesn't go directly to the `Service` that is representing the other `Pod` and the communication is `Route` to the `Service Mesh`.
- Then the `Service Mesh` is responsible to `Route` the comminucation to the `Service` that is representing the `Pod`.
- The point for this is that the `Service Mesh` can run some `Mesh Logic`, one before routing the communication to the destination `Pod`, or after the destination `Pod` receives the communication packages or a combination of both.
- The `Mesh Logic` also implements `Telemetry`. This registers some information about the comunication between the microservices.
- We also can implement a `Tracing` mechanism in a `Service Mesh`.
- We can implement several things using a `Service Mesh`, like `Security`, Re-routing requests, etc.
- Istio implements the `Service Mesh` injecting its own container into the `Pod` called `Proxy`.
- The `Network` requests are going to be `Routed` internally in the `Pod` from the `container` that is originating the request to the `Proxy` container.
- In the `Proxy` is where the `Mesh Logic` can be implemented.
- All the `Proxies` in `Istio` are called `Data Plane` and the `Pods` in the `istio-system` *Namespace* are caled `Control Plane`.
- The `Control Plane` is composed of some `Pods`, `Istiod` and `Kiali UI`, the `Proxies` communicate with the `istiod` *Pod* for the `Telemetry`.


