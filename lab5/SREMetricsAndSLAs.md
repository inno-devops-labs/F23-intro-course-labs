## Task 1: Key Metrics for SRE and SLAs

As its name suggest, SRE is a discipline useed to improve the reliability and performance of the systems. It applies software engineering practices to operations and infrastrucnture problems to improve system reliability and to reduce the time require to downtime of the system.

Few metrics that are used in SRE to measure system reliability, availability and performance are as follows:

1.**Latency**
Latency is the measure of time that a systems takes to respond a request. And its simple logic, High latency  means bad performance and vice versa. It is important to establish a benchmark limit to distinguish between the acceptable and unacceptable latency.

2. **Traffic**
Traffic is the measure of the demand that the users are putting on the system. It can be measured in many ways, one of the ways is to measure requests per second, or the size of data transfers etc.

3. **Errors**
The error rate is the percentange of the requests which has failed either implocitly or explicitly or by time out etc. A high error rate could indicate a majot issue which needs to be take care of.

4. **Saturation**
Saturation is the measure of the systems utilized capacity. If it increases then the latency also can increase and error rate aswell which can eventually lead to system failure. Saturation can help us determine if scaling is need for or system or not.

5. **Mean Time to Recovery (MTTR)**
MTTR is the mean time it takes to recover from a failure. This can be used to asses the efficiencty of incident response and recovery process

6. **Service Level Objectives (SLOs)**
SLOs are specific and quantifiable and acheivable goals that the SRE team is confident that the software can achieve. They are used to set the expectattion for system performance and reliablity.

7. **Service Level Agreements (SLAs)**
SLAs are the legal documents that the company will have with the customer. It state the consequences when one or more SLOs are not met. 

8. **Service level Indicators (SLIs)**
SLIs are the actual measurements of the metrics an SLO definces. They help to monitor the performcance of the syrem against the defined SLOs.

## Service Level Agreements (SLAs) of Major Companies

### 1. [Googles Cloud Platform (GCP) SLA](https://cloud.google.com/terms/sla)
Google Cloud Platform provides various SLAs to its customer for its different services. One of the common metrics they provide is the uptime percentage, which is a key indicator of system availability.

- Google compute Engine and Google cloud storage provides a monthly uptime percentage of at least 99.95%.

### 2. [Amazon web serices (AWS) SLA](https://aws.amazon.com/legal/service-level-agreements/?aws-sla-cards.sort-by=item.additionalFields.serviceNameLower&aws-sla-cards.sort-order=asc&awsf.tech-category-filter=*all)
Similar to google, AWS provides SLAs for its varoious services with uptime being a common metrics between these two big organizations

- Amazon S3 and EC2 offers a monthly uptime percentage of 99.99%, if the service fails below this then the customers can recieve service credits.

## Observations or Insights
If the services do not meet the guaranteed uptime, both companies provide service credits to their customers, which shows their commitment to their service quality and customer satisfaction.