# Key Metrics in SRE
Site Reliability Engineering (SRE) is a discipline that uses software engineering principles to solve problems in IT operations. It aims to create scalable and highly reliable software systems. 

The "Four Golden Signals" of monitoring, as defined in the Site Reliability Engineering (SRE) practice by Google, are a set of key metrics that can help determine the health of a system. These signals are Latency, Traffic, Errors, and Saturation

1. **Latency:** This measures the time it takes to service a request. It's important to distinguish between the latency of successful requests and the latency of failed requests. Failed requests often return more quickly than successful ones, which can skew the metrics.
2. **Traffic:** This is a measure of how much demand is being placed on your system, typically represented as requests per second. Knowing the patterns of your traffic can help you prepare your system for high load times.
3. **Errors:** This is the rate of failed requests. Depending on your application, a failure could be defined in different ways (for example, requests that return an HTTP 500 status, requests that resulted in exceptions, or requests that did not return a result in an expected format).
4. **Saturation:** This is a measure of your system's fullness. For example, this could be represented as the percentage of CPU or memory usage. If your system is approaching its maximum capacity, it's often a sign that performance will degrade, and you need to add resources or reduce demand.

---
There three more metrics to monitor and measure the performance and reliability of IT systems and they are:

1. **Service-Level Objectives (SLOs)** are specific, quantifiable goals that you are confident the software can achieve at a reasonable cost. For example, you might set an SLO of 99.95% uptime for your company's food delivery app.
2. **Service-Level Indicators (SLIs)** are the actual measurements of the metric an SLO defines. For instance, if your application is up and running 99.92% of the time, this is the SLI.
3. **Service-Level Agreements (SLAs)** are legal documents that state what would happen when one or more SLOs are not met. For example, the SLA might state that the technical team will resolve your customer's issue within 24 hours after a report is received.

---

## SLAs or reliability metrics
[Cloud Storage Service Level Agreement (SLA)](https://cloud.google.com/storage/sla)

[Amazon Connect Service Level Agreement](https://aws.amazon.com/connect/sla/)

1. Both companies emphasize the importance of key SRE metrics, including latency, traffic, errors, and saturation, in maintaining system reliability. They also stress the importance of error budgets in managing risk and maintaining service standards.
2. Google and AWS both have a strong focus on automation in their SRE practices. This not only helps in scaling their services but also in maintaining system reliability amidst frequent software updates.
3. Both companies highlight the importance of SRE in bridging the gap between development and operations, highlighting the role of SRE in facilitating more effective DevOps practices.


In conclusion, while the specific SLAs of Google and AWS are not publicly available, their commitment to SRE principles and the use of key SRE metrics provide insights into how they maintain the reliability, availability, and performance of their systems.
