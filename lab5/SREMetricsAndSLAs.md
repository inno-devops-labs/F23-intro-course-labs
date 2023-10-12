# Key Metrics for Site Reliability Engineering (SRE) and Service Level Agreements (SLAs)

## Key Metrics used in SRE

1. **Service Level Indicators (SLIs)**:
   - Quantitative measures of a service level, such as latency or error rate.
   
2. **Service Level Objectives (SLOs)**:
   - Target level of service that an SRE team aims for, based on SLIs. For instance, "99.9% of requests will have a latency below 300ms."
   
3. **Service Level Agreements (SLAs)**:
   - Formalized level of service agreed upon between service providers and consumers. Breaching an SLA often comes with consequences or penalties.

4. **Error Rate**:
   - Percentage of all requests that result in an error.

5. **Availability**:
   - Percentage of time a service is operational and available. Commonly aimed values are 99%, 99.9%, and 99.99% availability.

6. **Latency**:
   - Time taken to process a request. Measured in various percentiles like P50, P95, and P99 to understand the service's behavior under average and peak loads.

7. **Incident Frequency**:
   - How often incidents or outages occur.

8. **Mean Time To Recovery (MTTR)**:
   - Average time taken to restore a service after an incident.

9. **Change Failure Rate**:
   - Percentage of changes that fail.

10. **Deployment Frequency**:
   - How often deployments or releases are done.

## SLAs or Reliability Metrics for Two Companies

1. **Google Cloud Platform**:
   - Offers SLAs for various services. For example, the Google Compute Engine offers a monthly uptime percentage of 99.95% for instances in multiple zones.
   - Observations: Google provides credits to customers if SLAs are not met, showcasing the importance of reliability and trust.

2. **Amazon Web Services (AWS)**:
   - Like Google Cloud, AWS offers SLAs for its myriad services. For instance, the Amazon S3 standard storage has an SLA of 99.9% monthly uptime.
   - Observations: AWS also compensates users through service credits in case of SLA breaches, emphasizing the company's commitment to reliability.

## Importance of SRE Metrics

These metrics provide actionable insights into system health, performance, and user satisfaction. They help teams identify areas for improvement and ensure high availability and performance. Adhering to SLAs and achieving SLOs fosters trust between service providers and consumers.