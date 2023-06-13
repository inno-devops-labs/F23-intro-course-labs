Tool Name: Prometheus
Description: Prometheus is an open-source monitoring and alerting solution used to collect and analyse metrics from the systems.

Purpose and Benefits: In terms of DevOps context, Prometheus automates metrics collection and provides real-time monitoring and alerting. Thus, it helps to identify issues with performance and availability
of the insfrastructure and detects anomalies.

Key Features and Functionalities:
- Collects real-time monitoring data in time-series format from different containers, servers and databases
- Allows to configure rules for alerting with Alert Manager and send them via specific channels such as email or Telegram
- Uses a flexible query language PromQL for metrics data
- Uses pull-based model so it scrapes metrics from targets that expose an HTTP endpoint
- Can be easily integrated with tools like Grafana to visualise the data about the metrics

Use-Cases: For example, Uber and Digital Ocean use Prometheus for monitoring their infrastructure, collect metrics from microservices deployes on Kubernetes, monitor server resource usage, performance
metrics, traffic from network, set up alerts for high CPU usage.

