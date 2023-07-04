**The key metrics used in SRE**
- Service level agreement (SLA) metrics: define the agreed-upon levels of service availability, reliability, and performance, inlc metrics like uptime percentage, response time, error rates, and MTTR.
- Service level objective (SLO): measurable target or goal for a specific service metric, typically derived from the SLA, to ensure the desired level of reliability, availability, or performance.
- Service level indicator (SLI): a quantifiable metric about the system's behavior that is used for assessing the performance of the service.
- Some concrete commonly used metrics:
  - Mean time between failures (MTBF): The average amount of time between failures of a system or component.
  - Mean time to failure (MTTF): The average amount of time before a system or component fails for the first time.
  - Mean time to repair (MTTR): The average amount of time it takes to repair a failed system or component.
  - Failure rate: The number of failures per unit of time.
  - Uptime: The percentage of time that a system is available for use.
  - Latency: The time it takes for a system to respond to a request.
  - Throughput: The number of requests that a system can handle per unit of time.
  - Error rate: The percentage of requests that fail.

**SLA of large robust organisations:**
1. Google Cloud Platform (GCP)

GCP offers Service Level Agreements (SLAs) for different services, ensuring specific levels of availability and performance.
For instance, according to their SLA (https://cloud.google.com/compute/sla), GCP Compute Engine provides:
- monthly uptime percentage of >= 99.99% for Instances in Multiple Zones
- monthly uptime percentage of >= 99.5% for a single instance
- monthly uptime percentage of >= 99.99% for load balancing
Also, as a mitigation strategy, if the actual value of monthly uptime for a certain type of service is less than stated, then depending on how much it deviates from the promised, a percentage of the monthly bill that did not meet the SLO will be credited to customer's future bills.

2. Amazon Web Services (AWS)

AWS publishes its Service Level Agreements (SLAs) for various services, guaranteeing specific levels of availability. 
For example, AWS S3 (Simple Storage Service) offers a minimum of 99.9% availability in a given month (https://aws.amazon.com/s3/sla/). If this value is not satisfied, the customers also receive Service Credits (analogous to Google's system).

Both Google and Amazon are very transparent about their availability metrics. This transparency helps to build trust with their customers and partners. 
Also, both companies have a strong focus on automation and invest in new technologies. This automation helps to reduce the risk of human errors, improve the speed of problem resolution and ensure such high values of availability in SLA.
These metrics are important because they provide a way to measure the reliability, availability, and performance of software systems.
They can be used to identify areas for improvements, and to ensure meeting the customers' needs, reduce the risk of outages, and improve the overall business value of the software system.
