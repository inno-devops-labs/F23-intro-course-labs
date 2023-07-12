### Key Metrics
 - Service Level Indicators (SLIs): These are quantifiable measurements of a system's performance, availability, and other attributes
that are directly related to user experience. Examples include response time, error rate, and availability percentage.
 - Service Level Objectives (SLOs): These are specific targets for SLIs that a service must meet in order to provide the desired level
of service to its users. SLOs are usually expressed as a percentage or a range of values that define acceptable performance levels.
 - Service Level Agreements (SLAs): These are formal agreements between a service provider and its customers that define the expected
level of service for a given service. SLAs typically include SLOs as well as other metrics such as response time guarantees and uptime commitments.
 - Mean Time Between Failures (MTBF): This is a measure of the average time between system failures. It is used to estimate the overall reliability of a system.
 - Mean Time To Repair (MTTR): This is a measure of the average time it takes to repair a system after it has failed. It is used to estimate the system's availability and the effectiveness of the recovery process.
 - Mean Time To Detect (MTTD): This is a measure of the average time it takes to detect a problem or failure in a system. It is used to estimate the effectiveness of monitoring and alerting systems.
 - Error Budgets: These are defined as the amount of acceptable errors within a given period. They are used to set targets for system performance and reliability by incentivizing developers to prioritize improvements rather than new features.

### SLAs or reliability metrics founded for the two companies

 - Google
   
    1. Google provides a Public Cloud Service Level Agreement (SLA) for Google Cloud Platform, which guarantees a range of services with a defined level of performance.
    2. The Google Cloud Platform SLA guarantees a 99.95% monthly uptime percentage for its Compute Engine service, along with other specific metrics for other services such as Storage, BigQuery, etc.
    3. Google also provides Service Level Objectives (SLOs) and Service Level Indicators (SLIs) with respect to its Google Site Reliability Engineering (SRE) practices . These SLOs and SLIs are defined in the Google SRE book, and they provide details on how Google measures the reliability and availability of their services.

 - Amazon

    1. Amazon provides a Service Level Agreement (SLA) for its Amazon Web Services (AWS) platform, which guarantees a range of services with a defined level of performance.
    2. The AWS SLA guarantees a monthly uptime percentage of 99.99% for EC2, an Elastic Block Store (EBS) volume, Elastic Load Balancing, and Amazon RDS, among others.
    3. Amazon also provides operational dashboards, including the AWS Service Health Dashboard, which provides real-time information regarding AWS performance and availability. Additionally, Amazon publishes Amazon CloudWatch Metrics for all of its services, providing visibility into the performance of AWS services regarding latency, processing time, and other metrics.


Google and Amazon are very transparent about their availability metrics, which helps build trust from their customers and partners. Companies also pay great attention to automation, which helps to reduce the risk of human errors, increase the speed of problem solving and ensure such high availability rates in SLA. Indicators play an important role because they allow you to measure the reliability, availability and performance of software systems. They can help identify areas that require improvements and to ensure customer satisfaction, reduce the risk of operational failures and increase the overall business value of the software system.
   
