## Key metrics used in SRE :

1. **Availability**: Measures the percentage of time a system or service is operational and accessible to users. It is typically represented as a percentage, such as "99.9% uptime," indicating the expected availability over a specific period.

2. **Mean Time to Detect (MTTD)**: Measures the average time it takes to detect an incident or failure. It helps assess how quickly the SRE team becomes aware of issues and can respond to them.

3. **Mean Time to Resolve (MTTR)**: Measures the average time it takes to resolve an incident or failure. It indicates the efficiency of the incident response process and the speed of restoring normal service.

4. **Error Rate**: Represents the proportion of requests or transactions that result in errors or failures. It helps identify problematic areas of a system and measure the overall stability and reliability.

5. **Latency**: Measures the time it takes for a request or transaction to complete, often in milliseconds. Monitoring latency helps identify performance bottlenecks and assess the responsiveness of a system.

6. **Throughput**: Measures the number of requests or transactions processed by a system over a given time period. It provides insights into system capacity and performance under different load conditions.

7. **Service Level Objectives (SLOs)**: SLOs define the desired performance and reliability targets for a service. They are typically expressed as specific measurable metrics and percentages, aligning with user expectations and business requirements.

8. **Error Budget**: Error budget is a concept closely related to SLOs. It quantifies the acceptable level of errors or downtime within a specified timeframe. The error budget determines the balance between investing in new features and focusing on reliability improvements.

## SLAs or reliability metrics you found for the two companies, along with any notable observations or insights:

### Example 1: Amazon Web Services (AWS)

- **Service Level Agreement (SLA)**: AWS provides SLAs for various services, including compute, storage, and network services. For example, AWS offers a 99.99% SLA for EC2 instances in its service level commitments, ensuring high availability of virtual servers.

- **Reliability Metrics**: AWS publishes its service health dashboard, which provides real-time information about service availability, performance, and any ongoing incidents. Users can monitor the availability and performance of AWS services and track their historical reliability metrics.

### Example 2: Google Cloud Platform (GCP)

- **Service Level Agreement (SLA)**: GCP offers SLAs for several services, such as Compute Engine, Cloud Storage, and Cloud Functions. For instance, GCP provides a 99.95% SLA for the Compute Engine service, ensuring high availability and performance of virtual machines.

- **Reliability Metrics**: Google Cloud Platform provides a public status dashboard, where users can monitor the operational status, incidents, and reliability metrics for GCP services. The dashboard offers transparency and visibility into service availability and performance.

## Importance of these metrics and how they contribute to the overall reliability and performance of software systems:

- **Monitoring and Alerting**: Metrics provide real-time insights into system health and performance. They enable proactive monitoring and alerting, allowing SRE teams to detect and respond to incidents quickly.

- **Continuous Improvement**: Metrics help identify areas for improvement and guide reliability engineering efforts. By monitoring metrics over time, teams can make data-driven decisions to enhance system reliability, reduce downtime, and optimize performance.
