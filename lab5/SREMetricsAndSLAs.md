# SRE Metrics & SLAs
##Key metrics used in Site Reliability Engineering (SRE) to measure system reliability, availability, and performance include:

1. **Mean Time Between Failures (MTBF)**: This metric measures the average time between system failures. It helps assess the reliability and stability of a system.

2. **Mean Time to Recover (MTTR)**: MTTR measures the average time required to restore a system to normal operation after a failure or incident. It indicates the efficiency of the recovery process and impacts system availability.

##SLAs or reliability metrics for two large companies:

1. **Google**: Google's SLA for its Google Cloud Platform (GCP) guarantees a monthly uptime percentage for its core services, such as Compute Engine and Cloud Storage. For example, the SLA for Google Compute Engine states a 99.95% uptime commitment.

2. **Amazon Web Services (AWS)**: AWS provides SLAs for various services, such as Amazon EC2 and Amazon S3. For instance, the AWS EC2 SLA offers a service credit if the monthly uptime percentage falls below 99.99%.

## Observations and insights:

Both Google and AWS emphasize high availability with SLAs that guarantee a certain uptime percentage for their services.
The SLAs offer service credits or compensation if the uptime commitments are not met, demonstrating the companies' commitment to reliability and customer satisfaction.
These SLAs reflect the importance of minimizing system downtime and ensuring consistent availability for users.


## Importance of metrics and their contribution:

MTBF helps identify areas for improvement in system reliability, enabling proactive measures to prevent failures and enhance stability.
MTTR focuses on minimizing downtime and optimizing incident response processes, contributing to faster system recovery and improved availability.
Both metrics are critical in measuring and maintaining high system reliability, meeting customer expectations, and avoiding negative impacts on business operations.