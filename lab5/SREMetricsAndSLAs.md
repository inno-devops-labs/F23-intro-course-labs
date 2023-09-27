# Key metrics used in Site Reliability Engineering (SRE)
SRE engineers use three metrics to measure system reliability, availability, and performance: service-level agreements (SLAs), service-level indicators (SLI), and service-level objectives (SLO). 

**SLAs:** is a formal contract or agreement between a service provider and its customer that outlines the expected level of service quality. SLA metrics include metrics related to service availability, response time, uptime, etc.

**SLOs:** defines targets or objectives that a service provider sets for the reliability and performance of a service. SLI metrics include response time, uptime, error rates and availability.

**SLIs**: defines measurements or metrics that are used to evaluate the performance and reliability of a service in real-time .

Examples of measurable metrics:

- Uptime: the percentage of time an instance remains operational, running, and ready for use.
- Service availability: the percentage of time that service requests return expected responses.
- Mean time to repair (MTTR): the time it takes to resolve a specific issue or incident.
- The transaction response time: how long it takes for a transaction request to receive a response (in ms). 
- Disk write bytes: the rate at which a system writes data bytes to a disk over a defined period. (in seconds)
- Link throughput: the volume of packet data that can traverse a given network link within a specified period of time
- HTTP errors: the percentage of user requests that result in unexpected HTTP status codes.
- The disk read errors: the percentage of read requests to a disk that encounter failures.
- Memory utilization: the amount of RAM a system uses.
- Disk utilization: the amount of disk space used on a specific server instance.

# Comparison of SLA in companies
### Google Cloud
Google Cloud provides an [SLA](https://cloud.google.com/storage/sla) for its services, including Cloud Storage. If Google fails to meet the Service Level Objective outlined in the SLA the customer will become eligible to receive financial credits. Google Cloud provides Standard storage class in a multi-region or dual-region location of Cloud Storage with monthly uptime percentage of >= 99.95%. 

### Microsoft Online Services
Microsoft offers an [SLA](https://www.microsoft.com/licensing/docs/view/Service-Level-Agreements-SLA-for-Online-Services) for its Online Services. This SLA defines key metrics such as downtime, uptime percentage, and service credits for each uptime percentage value. If Microsoft fails to achieve and maintain the specified service levels for each of their services, customers may be entitled to receive credits applied to a portion of their monthly service fees. As an example, if the uptime percentage for Microsoft Teams is less than 95%, customers can receive a credit of 100%.

Google Cloud and Microsoft Online Services both offer SLAs to ensure the reliability of their services.

# Importance of SRE metrics
- **Monitoring and improvement:** SRE metrics help to optimize system performance and reliability. Monitoring performance can provide insights into areas for improvement.
- **Risk managment:** SRE metrics help to identify and address potential issues before they impact the system.
- **Customer satisfaction:** SRE metrics help to meet customer expectations. By maintaining reliable and high-performing systems, SRE contributes to enhanced customer satisfaction.

