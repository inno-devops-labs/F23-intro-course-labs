
# SRE Metrics and Definitions

## Key Metrics in Site Reliability Engineering (SRE)

### 1. Latency
Latency refers to the time it takes for a system to respond to a request. In simpler terms, it's the time delay between when user ask a system to do something and when it actually does it, more latency imply worse performance and vice versa.

### 2. Traffic
Traffic is a measure of how many requests or how much data is being sent to and from a system. Something like the number of cars on a highway, the more cars, the more traffic, can me measured in different way like requests per seconds, etc.

### 3. Errors
Errors in a system refer to the number or percentage of requests that fail. This could be due to server issues, bugs in the code, or other unexpected problems.

### 4. Saturation
Saturation measures how "full" a system or service is. If a system is 100% saturated, it means it's completely full and can't handle any more requests or workload, if the system is completely saturated then its latency will increase and scaling my be needed.

### 5. Mean Time To Recovery (MTTR)
MTTR is the average time it takes for a system to recover after a failure. The shorter the MTTR, the quicker a system can bounce back after encountering an issue.

### 6. Service Level Objectives (SLOs)
SLOs are specific measurable characteristics of the SLA like uptime or response time. the team set the target reliability of a service. For instance, "99.9% uptime" is a common SLO.

### 7. Service Level Agreement (SLA)
SLA is a formal document between a service provider and the end user. It defines the expected performance and availability of a service, and might also specify penalties for not meeting these expectations.

### 8. Service Level Indicators (SLIs)
SLIs are metrics that user use to measure the performance and health of the services. They're indicators of how well a system is performing in terms of its SLAs and SLOs.

## Importance of SRE Metrics
Metrics in SRE are crucial for ensuring that software systems are reliable, available, and performant. They provide insights into how well a system is functioning and help identify areas for improvement. By setting clear SLAs, SLOs, and using SLIs to measure performance, organizations can maintain high levels of service and quickly address issues when they arise.



## SLAs of Major Companies  

### 1. **Google Cloud Platform (GCP)** 
 - Provides varying SLAs for different services with uptime percentage as a prevalent metric. - Google Compute Engine and Google Cloud Storage guarantee a monthly uptime of at least 99.95%. 

### 2. **Amazon Web Services (AWS)**  
- Like Google, AWS offers distinct SLAs for different services. - Amazon S3 and EC2 promise a monthly uptime of 99.99%. Falling below this threshold entitles customers to service credits.

### **Observations**
 Both companies pledge service credits if they don't meet their uptime guarantees, indicating their dedication to service quality and customer satisfaction. 

## Importance of SRE Metrics 
SRE metrics are key tools to watch, measure, and boost the reliability, availability, and performance of systems. Here's a closer look at some:

- **Uptime**: This tells how often a service is available. A high uptime means the system is reliable and works without many breaks.
  
- **Downtime**: This is when a service isn't working. Too much downtime can cause problems for users and might even cost businesses money.

- **Refunds for Downtime**: Companies like Google giving money back for too much downtime shows they really care about offering great service. Keeping a close eye on these metrics helps SRE teams spot and fix issues, making systems work better and users more satisfied.
