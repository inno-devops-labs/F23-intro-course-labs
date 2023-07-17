# Report - SRE Metrics And SLAs 

#### SRE Mertrics
- **Service Level Objective (SLO)** is level of service performance and reliability. They are typically defined in terms of availability, response time, error rates, or other relevant indicators. 
- **Service Level Agreement (SLA)** are agreements between service providers and customers that specify the expected level of service. They include guarantees related to availability, uptime, response time, and support response times. 
- **Mean Time Between Failures (MTBF)** measures the average time between system failures. It helps to assess system reliability by calculating the average uptime and identifying patterns of failures over time.
- **Mean Time to Repair/Recover (MTTR)** measures the average time required to repair or recover a system after a failure or incident. It includes the time to detect the issue, diagnose the problem, and restore the service to a fully functional state. 
- **Error Budget** is a concept that quantifies the acceptable level of errors or downtime within a specific timeframe. It represents the portion of system reliability that can be consumed before breaching the SLO. SRE teams monitor error budgets closely to ensure they stay within the defined thresholds.
- **Request/Transaction Latency** measures the time taken for a request or transaction to travel through the system and receive a response. It is critical to ensure acceptable performance levels and meet user expectations. 
- **Availability** measures the percentage of time a system or service is operational and accessible to users. It is usually expressed as a percentage, such as "99.9% uptime."

#### SLA
**Yandex cloud SLA:**
https://yandex.ru/legal/cloud_sla/?lang=ru
**Microsoft SLA for Online Services (I took latest version of 07.01.2023):**
https://www.microsoft.com/licensing/docs/view/Service-Level-Agreements-SLA-for-Online-Services
in the Microsoft agreement, almost the entire place is occupied by formulas for calculating the uptime of all various services. Other metrics are described briefly but clearly.

uptime criterion can affect on customer satisfaction, business reputation and 