

<p align="center">
  <img src="https://user-images.githubusercontent.com/15192194/202147884-ad0317a5-00dd-47df-b103-970584f801e0.png?raw=true" height=100/>
</p>


### Starting a TimescaleDB docker (with promotheus, promscale, etc.)

```
$ docker-compose up --build
```
### Starting Apache NIFI with .json file

![image](https://user-images.githubusercontent.com/15192194/201967062-a702d354-c0d0-4859-9a9f-841113e70c0a.png)

Values (temperature, conductivity, and battery level) are inserted into the TimescaleDB
![image](https://user-images.githubusercontent.com/15192194/201967409-3d6fb7b9-eea9-4e70-932c-1d7e02b24824.png)



## What is TimescaleDB?

TimescaleDB is an open-source database designed to make SQL scalable
for time-series data. For more information, see
the [Timescale website](https://www.timescale.com).



<img src="https://github.com/samuvack/TimescaleDB/blob/main/images/scale.svg" alt="Timescale" width="100%"/>



## What is Prometheus?

Prometheus, a [Cloud Native Computing Foundation](https://cncf.io/) project, is a systems and service monitoring system. It collects metrics
from configured targets at given intervals, evaluates rule expressions,
displays the results, and can trigger alerts when specified conditions are observed.

The features that distinguish Prometheus from other metrics and monitoring systems are:

* A **multi-dimensional** data model (time series defined by metric name and set of key/value dimensions)
* PromQL, a **powerful and flexible query language** to leverage this dimensionality
* No dependency on distributed storage; **single server nodes are autonomous**
* An HTTP **pull model** for time series collection
* **Pushing time series** is supported via an intermediary gateway for batch jobs
* Targets are discovered via **service discovery** or **static configuration**
* Multiple modes of **graphing and dashboarding support**
* Support for hierarchical and horizontal **federation**

## What is Promscale?


**Promscale is a unified metric and trace observability backend for Prometheus,
Jaeger and OpenTelemetry built on PostgreSQL and TimescaleDB.**

Promscale serves as a robust and 100% PromQL-compliant Prometheus remote storage and as a durable and scalable 
Jaeger storage backend. Promscale is a certified Jaeger storage backend.

Unlike other observability backends, it has a simple and easy-to-manage architecture 
with just two components: the Promscale Connector and the Promscale Database (PostgreSQL with the
TimescaleDB and Promscale extensions).

## What is Otel collector?


Promscale natively supports the OpenTelemetry Line Protocol (OTLP) for traces and Prometheus remote write protocol for metrics. You can send traces to Promscale using OTLP with any of the OpenTelemetry client SDKs, instrumentation libraries, or the OpenTelemetry Collector. Currently, Promscale only supports gRPC endpoint for traces. You can send metrics to Promscale HTTP endpoint using Prometheus remote write protocol with the OpenTelemetry Collector. OpenTelemetry Collector converts OTLP metrics to Prometheus remote write protocol metrics.



## What is Jaeger?
As on-the-ground microservice practitioners are quickly realizing, the majority of operational problems that arise when moving to a distributed architecture are ultimately grounded in two areas: networking and observability. It is simply an orders of magnitude larger problem to network and debug a set of intertwined distributed services versus a single monolithic application.


## How to use this image

This image is based on the
official
[Postgres docker image](https://store.docker.com/images/postgres) so
the documentation for that image also applies here, including the
environment variables one can set, extensibility, etc.


