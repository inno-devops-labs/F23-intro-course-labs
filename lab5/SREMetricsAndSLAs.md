## SRE Metrics and SLAs

### Key Metrics Used in SRE

Site Reliability Engineering (SRE) involves monitoring and measuring various metrics to ensure the reliability and
performance of software systems. Here are some key metrics commonly used in SRE:

- Availability: Availability measures the percentage of time a system is operational and accessible to users. It is
  typically expressed as a percentage. SRE teams aim to maximize availability and minimize downtime to provide a
  reliable user experience.
- Mean Time to Detect (MTTD): MTTD measures the average time taken to detect an incident or failure. SRE teams focus on
  reducing MTTD by implementing effective monitoring and alerting systems, allowing for quick detection and response to
  incidents.
- Mean Time to Repair (MTTR): MTTR measures the average time taken to repair or recover from an incident. SRE teams aim
  to minimize MTTR by optimizing incident response processes, implementing automation, and ensuring efficient incident
  resolution.
- Error Rate: Error rate measures the frequency of errors or failures occurring within a system. It could be represented
  as the number of errors per minute, requests, or transactions. SRE teams track error rates to identify trends,
  investigate root causes, and implement remedial actions.
- Request Latency: Request latency measures the time taken for a system to respond to a user request. SRE teams monitor
  request latency to ensure acceptable response times and identify performance bottlenecks or issues that may impact
  user experience.
- Throughput: Throughput measures the rate at which a system can handle requests or transactions. SRE teams monitor
  throughput to ensure the system can handle expected loads and scale appropriately to meet demand.
- Service-Level Objectives (SLOs): SLOs define the targets or thresholds for specific metrics. They are defined in terms
  of availability, latency, error rates, or other relevant metrics. SRE teams set and monitor SLOs to maintain a desired
  level of reliability and performance.

### SLA of the Two Companies

- Google Cloud Functions Monthly Uptime Percentage: 99.95%
- Yandex Compute Cloud Monthly Uptime Percentage: 99.95%

### Importance of Metrics in Reliability and Performance

- Measure and Track Performance: Metrics allow teams to monitor the performance of a system in terms of availability,
  latency, error rates, and other key indicators. This helps identify areas that need improvement, track progress, and
  compare against set targets or benchmarks.
- Detect and Respond to Incidents: Metrics such as MTTD and MTTR help teams measure incident response efficiency. By
  monitoring these metrics, teams can identify incidents quickly, initiate appropriate actions, and reduce downtime,
  minimizing the impact on users.
- Identify and Resolve Performance Issues: Metrics like request latency, throughput, and error rates help identify
  performance bottlenecks and areas for optimization. By analyzing these metrics, teams can pinpoint the root causes of
  issues, make informed decisions, and improve the overall user experience.
- Drive Continuous Improvement: Metrics provide valuable data for analysis and post-incident reviews. By evaluating
  trends, patterns, and correlations in metrics, teams can identify areas for improvement, implement remedial actions,
  and enhance the overall reliability and performance of the system over time.