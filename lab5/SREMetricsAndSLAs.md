# Site Reliability Engineering

## Key metrics

* **Service Level Objectives** (SLOs) are specific goals or targets that define the desired level of reliability and availability for a system. 
* **Service Level Indicators** (SLIs) are quantitative measurements used to assess the performance and behavior of a system.
* **Error Budget** represents the allowed amount of downtime or errors a system can experience within a specific time period while still meeting the defined SLOs.
* **Mean Time to Detect** (MTTD) measures the average time it takes to detect an incident or failure.
* **Mean Time to Resolve** (MTTR) measures the average time taken to resolve an incident or failure once it has been detected.
* **Request Latency** measures the time it takes for a system to respond to a request.
* **Error Rate** represents the percentage of failed or erroneous requests out of the total requests processed by a system.
* **Availability** measures the percentage of time a system is operational and accessible to users.

## Two companies

1. [YandexCloud](https://yandex.com/legal/cloud_sla/) 
* If Yandex does not meet the warranted Service Uptime Percentage, Customer will be eligible to receive Compensation.
* Yandex commits to provide Customer with Service Uptime Percentage specified in Service Levels for specific Services.
* Service Level for Yandex API Gateway is **99,90%**

2. [SberCloud](https://developers.sber.ru/docs/ru/sberid/service/sla-legal) 
* In case of violation of the indicators of the level of availability of Services due to the fault of the Contractor, the Customer has the right to compensation.
* Routine maintenance works in total no more than 1 hour per month.
* The recovery time for an incident with an average priority does not exceed 26 hours


## Discussion

SRE teams leverage the monitoring and analysis of these critical metrics to identify areas for improvement, proactively address potential issues, optimize system performance, and continuously enhance the dependability, accessibility, and efficiency of software systems.

GitOps and SRE share common goals of enhancing collaboration, automation, and reliability in software development and operations. By integrating with continuous delivery practices, they enable automated deployments and maintain consistency across environments. Successful implementations of GitOps and SRE have demonstrated improved operational efficiency, minimized downtime, and accelerated and more dependable software delivery. To adopt GitOps and SRE, teams can utilize version control systems like Git, implement declarative infrastructure configurations, define SLOs and error budgets, establish robust monitoring and incident response practices, and integrate these practices into their CI/CD pipelines. 

Overall, GitOps and SRE provide valuable approaches to elevate the reliability, scalability, and automation of software systems, fostering collaboration, efficiency, and stability throughout the software development lifecycle.