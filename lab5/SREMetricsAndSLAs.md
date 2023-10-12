# SRE Metrics and SLAs

## Key Metrics in SRE

- **Latency**: Time to service a request. Distinguishing successful and failed request latency is crucial. High latency harms user experience and signals potential system issues.
- **Errors**:  Rate of failed requests (e.g., HTTP errors). Monitoring helps identify problematic services and prompt corrective action.

- **Service Level Agreements (SLAs)**: Agreements specifying expected service levels.
- **Saturation**:  Measures system utilization. Identifying optimal saturation levels is vital for performance and availability. High saturation can cause performance degradation and outages.
- **Traffic**:  Demand on the system, i.e., incoming user requests. High traffic without appropriate scaling can increase latency and error rates.

## SLAs or Reliability Metrics

- **Amazon Web Services (AWS)**:
  - **SLA**: Commits to a monthly uptime of at least 99.9% for Amazon S3. If SLA isn't met, AWS provides service credits, aligning with reliability assurance similar to Google Cloud.

- **Google Cloud Platform (GCP)**:
  - **SLA**: Guarantees a monthly uptime of 99.95% for services like Compute Engine and Cloud Storage. Failure triggers service credits, showcasing commitment to system reliability.




## Importance and Contribution to Reliability

These metrics are vital as they provide a quantitative and qualitative understanding of a system's performance and reliability. SLIs, SLOs, and SLAs set the expectations and goals for reliability. Monitoring error rates, latency, and availability helps identify issues and improve system performance. Capacity and incident metrics aid in maintaining a system's scalability and resilience.

The mentioned SLAs indicate the commitment of AWS and GCP to ensure high availability, instilling confidence in customers and highlighting the companies' dedication to delivering reliable services.

