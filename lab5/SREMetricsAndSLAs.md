# Lab5: SRE

- Zeyad Alagamy
- z.alagamy@innopolis.university
- Bs-CS-01

## Key Metrics:

1. `Service Level Objective (SLO):` is a desired level of performance or availability, which is a measurable threshold that the system should meet. Typically, expressed as percentages, such as 99.9% availability in a month.

2. `Error Budget:` It represents the acceptable amount of errors or downtime that can occur within a given time period without violating the SLO.

3. `Mean Time Between Failures (MTBF)`: is the average time elapsed between system failures. A higher MTBF indicates a more reliable system.

4. `Mean Time to Repair (MTTR)`: is the average time it takes to repair a system after a failure occurs. A lower MTTR indicates a faster recovery.

5. `Service Level Agreement (SLA)`: is an agreement between a service provider and its customers that defines the expected level of service in terms of availability, performance, and other metrics. SLAs often include guarantees and penalties for failing to meet the agreed-upon metrics.

6. `Error Rate`: measures the frequency of errors or failures encountered by a system during a specific time.

7. `Request Latency`: measures the time taken for a system to respond to incoming requests.

## Reliability Metrics and SLAs for Large Companies

### Google: the origin of SRE

- `SLA`: Google Cloud Platform (GCP) offers a 99.99% monthly uptime SLA for its Compute Engine service, which guarantees that virtual machines will be available 99.99% of the time.

- `Notable Observation`: Google provides a financially-backed SLA for its Compute Engine, demonstrating its commitment to high availability and reliability.

### Amazon Web Services (AWS)

- `SLA`: Amazon S3, the scalable object storage service from AWS, offers a 99.9% SLA for data durability, ensuring that objects stored in S3 will be retained 99.999999999% of the time and available for retrieval 99.9% of the time.

- `Notable Observation`: AWS focuses not only on availability but also on data durability, emphasizing their dedication to maintaining data integrity and accessibility.

## Importance of Metrics and SLAs in Reliability and Performance

The Idea behind SRE is to provide a reliable, and efficient. Therefore, Metrics and SLAs are essential for ensuring that. As, they provide:

- Measurement and Accountability: Metrics enable SRE teams to objectively measure the system's reliability, availability, and performance.

- Continuous Improvement: By monitoring metrics and comparing them against SLOs and SLAs, SRE teams can identify areas where the system falls short and prioritize efforts to improve reliability and performance.

- Effective Incident Response: Metrics like MTTR help gauge the efficiency of incident response processes.

- Customer Confidence and Trust: SLAs provide customers with assurances regarding the quality of service they can expect. Meeting or exceeding SLAs enhances customer confidence and trust in the system's reliability.
