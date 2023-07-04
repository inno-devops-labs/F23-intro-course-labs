## 1. Key Metrics in SRE

### Service Level Indicator (SLI)

An SLI (Service Level Indicator) is a quantitative measurement of a specific aspect of a service's performance or behavior. It represents a metric that is used to assess the overall quality of the service. SLIs are typically defined based on user-centric or system-centric factors. Examples of SLIs include request latency, error rates, availability, and throughput.

### Service Level Objective (SLO)

An SLO (Service Level Objective) is a target or goal set for one or more SLIs. It defines a desired level of performance or reliability that a service should meet over a specific time period. SLOs are usually defined in terms of a minimum acceptable value or a maximum allowable value for an SLI. For example, an SLO might specify that the service should maintain an availability SLI of at least 99.9% over a monthly period.

### Service Level Agreement (SLA)

An SLA (Service Level Agreement) is a formal agreement or contract between a service provider and its users or customers. It defines the expected level of service that will be provided and the consequences for failing to meet those expectations. SLAs typically include specific SLOs and their associated targets, as well as details about response times, support hours, and any penalties or remedies for breaches.
SLAs are often used as a means of establishing accountability and ensuring that service providers meet the agreed-upon levels of performance and reliability. They also serve as a basis for communication and alignment between different stakeholders, such as the service provider, customers, and SRE teams.

## 2. Share the SLAs or reliability metrics you found for the two companies, along with any notable observations or insights.
### Tinkoff [source](https://www.youtube.com/watch?v=jyXOZ_CUWnQ)
**SLI:** average amount of errors from payment provider in a month
**SLO:** 
- \> =0.01% 
- \> =0.1% 
- \> =1%

**SLA:** 
- return a commission for transaction
- return of unearned profit
- sign off, cover compensation
### Yandex.Cloud [source](https://yandex.ru/legal/cloud_sla_compute/)
**SLI:** percentage of availability time in the reporting period

**SLO:** 
- < 99,95%-99,00%
- < 99,00%-95,00%
- less 95,00%
  
**SLA:**
- Compensation, 10% from consument amount of compute time
- Compensation, 15%
- Compensation, 30%


### 3. Discuss the importance of these metrics and how they contribute to the overall reliability and performance of software systems. 
The provided SLAs and reliability metrics for Tinkoff and Yandex.Cloud showcase the specific indicators, objectives, and agreements related to their services. 
Companies like Tinkoff and Yndex use them to ensure quality and transparency of provided service for their customers. From business perspective such claim will bring point of trust credit for compamies.  
 
