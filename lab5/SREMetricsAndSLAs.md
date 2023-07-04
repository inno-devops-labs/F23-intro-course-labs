## Task 1: Key Metrics for SRE and SLAs
**Key metrics used in Site Reliability Engineering (SRE):**
a) Service-Level Objectives. SLOs define the target level of service that the system aims to achieve. They are usually expressed as a percentage of availability or a response time threshold.
b) Service-Level Indicators. SLIs are quantitative measurements that reflect the behavior or performance of a system. They are typically derived from metrics such as response time, error rate, throughput, latency, and availability.
c) Error budget is a concept introduced by SRE that quantifies the acceptable level of service degradation within a given period. It is calculated by subtracting the SLO from 100%.
d) Mean Time Between Failures. MTBF is a metric that calculates the average time between system failures.
e) Mean Time to Recover/Repair. MTTR measures the average time it takes to recover or repair a system after a failure occurs.
f) Mean Time to Detect. MTTD measures the average time it takes to detect a failure or incident in the system.

**Two examples of large companies are Google and Amazon Web Services (AWS)**:
-  Google: Google Cloud Platform (GCP) provides a Service Level Agreement (SLA) for various services. For example, GCP's Compute Engine offers a 99.99% monthly uptime SLA. This means that Google guarantees that virtual machine instances will have no more than 0.01% downtime in a given month. Google provides transparency by publishing the historical uptime of their services on their public status dashboard (https://cloud.google.com/terms/sla).
- Amazon Web Services (AWS): AWS offers SLAs for different services as well. For instance, AWS offers a 99.99% uptime SLA for its Elastic Compute Cloud (EC2) service. If uptime is between 95-99%, then AWS will return 30% of payment to user. AWS also provides SLAs for other services.
(links: https://aws.amazon.com/ru/legal/service-level-agreements/
https://aws.amazon.com/ru/compute/sla/)

**These metrics and SLAs play an important role in ensuring the reliability and performance of software systems:**
- Metrics and SLAs help set clear expectations. By defining SLOs and SLAs, organizations establish measurable targets for system reliability and performance.
- Continuous monitoring and improvement. Metrics such as SLIs enable teams to monitor system behavior, identify anomalies, and take proactive measures to maintain or improve performance.
- Data-driven decision making. Metrics and SLAs provide objective data that guides decision making.