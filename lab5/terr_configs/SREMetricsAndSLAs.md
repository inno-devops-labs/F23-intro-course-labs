# Task-1: SRE Metrics and SLAs

## 3 (a). Key Metrics Used in SRE

### Service Level Indicators (SLIs):
SLIs are metrics that reflect the health and performance of your services.

- **Latency**: The time it takes to process a request.
  *Example: For a search engine, users might expect search results within 200ms. If results take 2 seconds, users might switch to a competitor.*

- **Error Rate**: The fraction of all received requests that produce errors.
  *Example: If you run an e-commerce website and 1 out of 100 transactions fail, your error rate is 1%. Monitoring and minimizing this rate is crucial for user trust.*

- **Traffic**: The number of requests per second.
  *Example: A sudden spike in traffic might indicate a viral event or a DDoS attack, each requiring different responses.*

### Service Level Objectives (SLOs):
SLOs are the target values or ranges of values for SLIs.

*Example: An SLO might state that "95% of HTTP requests should return in under 200ms."*

### Service Level Agreements (SLAs):
SLAs are formalized versions of SLOs that include consequences of not meeting the objective.

*Example: A cloud provider might refund customers if availability drops below 99.9% in a month.*

### Error Budget:
The difference between perfect reliability and the SLO.

*Example: If you have an SLO of 99.9% uptime monthly (around 43 minutes of downtime), and you've used up 40 minutes in the first half of the month, you might halt new releases to stay within the budget.*

### Availability:
Measured as the percentage of uptime over a period.

*Example: Availability of 99.95% means a total downtime of about 4.38 hours per year.*

### Mean Time To Recovery (MTTR):
The average time it takes to restore a service after an outage.

*Example: If a database service has had three outages with recovery times of 5, 10, and 15 minutes, the MTTR is (5+10+15)/3 = 10 minutes.*

### Mean Time Between Failures (MTBF):
The average time between system failures.

*Example: If a system fails every 30 days on average, the MTBF is 30 days.*

## 3 (b). SLAs or Reliability Metrics for Two Companies

### Google Cloud Platform (GCP):

- **Compute Engine SLA**: 99.99% availability for instances in multiple zones and 99.95% for single instances.
- **Google Kubernetes Engine SLA**: 99.5% monthly uptime availability for zonal cluster. For autopilot pods it is 99.9%
  
### Amazon Web Services (AWS):

- **EC2 SLA**: More than 99.0% availability for instances with 10% service credits.
- **S3 SLA**: 99.0% monthly uptime percentage.

#### Observations:
Both AWS and GCP have almost similar SLAs for their compute services. However, GCP compute instance provides higher availability as per their SLAs.

## 3 (c). Importance of SRE Metrics

SRE metrics are crucial for multiple reasons:

- **Accountability**: SLAs provide a contract between service providers and users, ensuring users receive a consistent level of service.
  
- **Improvement**: Tracking metrics such as MTTR and MTBF can highlight areas needing attention and optimization.
  
- **Reliability**: Achieving and maintaining high SLOs ensures that services are dependable and trustworthy.
  
- **Resource Allocation**: Using error budgets, organizations can decide when to halt feature development in favor of reliability work.

