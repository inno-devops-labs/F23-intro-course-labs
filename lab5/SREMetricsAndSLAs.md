# Key Metrics for SRE and SLAs

## Key Metrics used in Reliability Engineering

1. SLOs | Service-Level objectives

   - measurable objectives that you think the program can achieve at a reasonable cost in comparison to other measures.

2. SLIs | Service-Level Indicators

   - Service-level indicators (SLIs) are the actual measures of the metric that a SLO specifies. In actual situations, you could get results that are either the same as or different from the SLO.

3. SLAs | Service-Level Agreements
   - Contracts known as service-level agreements (SLAs) specify what will happen if one or more SLOs are not met.
4. Error Budget
   - The SLO's tolerance for noncompliance is determined by error budgets. An SLO uptime of 99.95%, for instance, means that 0.05% of downtime is acceptable. If the software downtime is more than the error budget, the software team devotes all available time and resources to stabilizing the application.
5. Mean Time to Detect
   - Measures the average time it takes to detect an incident or a falure in the system.
6. Mean Time to Repeair
   - Measures the average time it takes to resolve an incident or a falure in the system. It includes the time spending diagnosting the system.

## SLA of big companies

1. Company A: Amazon Web Services (AWS)

   - Availability: AWS provides several SLAs for various services. For instance, Amazon S3 (Simple Storage Service) offers ordinary storage with a SLA of 99.9% availability, whereas Amazon EC2 (Elastic Compute Cloud) offers instances running across multiple Availability Zones with a SLA of 99.99%.
   - Notable Finding: AWS places a great priority on high availability and provides SLAs that go above the 99.9% industry standard. To ensure resilience and reduce downtime, their services are built to run across many data centers and geographies.

2. Company B: Google Cloud Platform (GCP)
   - Availability: For a variety of services, GCP offers SLAs. For instance, Google Cloud Storage offers a SLA of 99.9% for multi-regional storage whereas Google Compute Engine offers a SLA of 99.99% for instances running in various zones within a region.
   - Notable Observation: Like AWS, GCP places a focus on high availability and provides SLAs that go above and above the norm. To deliver dependable services with little interruptions, they make use of Google's distributed data centers and global network infrastructure.
