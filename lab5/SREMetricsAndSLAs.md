#  Key Metrics Used in Site Reliability Engineering (SRE):

**Service Level Objectives (SLOs)**: These are a measure of the desired reliability of a service or product. They're typically expressed as a percentage, such as 99.99% availability, and measure the target performance in key areas that are critical for the customer experience.

- Attainability: An SLO of 100% is functionally unattainable and represents a theoretical goal, not a useful SLO. SLOs should represent a minimum acceptable level of performance and never be considered “impossible.”

- Meaningfulness: Many organizations set SLOs for metrics that aren’t meaningful to the enterprise. CPU utilization is often cited as a meaningless SLO; for most organizations, this is irrelevant to both users and the enterprise.

- Measurability: If a metric cannot be accurately measured, it will not be useful as an SLO.
Controllability: An SLO that sets a maximum bar for the number of lightning strikes to the data center, for example, would not be valuable.

- Understandability: Some metrics may not have immediate relevance to IT management. For example, “Packet collision” is a commonly used proxy for system performance, but it doesn’t offer any real meaning to users and should therefore not be used as an SLO.

- Affordability: Does an organization really need 99.9999% uptime if 99.99% is acceptable? If an organization must invest in multiple redundant data centers, failover protocols and additional staff, the cost of the investment to ensure the SLO is met probably far outweighs the benefit the organization receives from that extra 52 minutes of uptime.

- Mutual Acceptance: All SLOs must be agreed upon by all parties involved — typically the service provider and the customer.

**Service Level Indicators (SLIs)**: These are the metrics that are monitored to indicate the performance and health of the services. Examples include uptime, latency, error rates, throughput, etc.

Calculated as percentage of total events that are considered acceptable. Example: 
(successful requests / total requests) x 100

Any SLI must be calculated over a given amount of time, such as every minute, over the course of an hour or over an entire month.

**Service Level Agreements (SLAs)**: These are the contracts between the service provider and customer, specifying the level of service to be delivered. If SLOs are not met and the service goes beyond its error budget, penalties as per SLAs might be imposed.
Legal teams, incident response or engineering teams can use Internal SLAs to measure the effectiveness of in-house operations like service desk operations, internal network performance and uptime, or even the proportion of chargebacks due to fraud.

# SLAs or reliability metrics you found for the two companies

**Google**

- Latency - The time it takes to service a request. It’s important to distinguish between the latency of successful requests and the latency of failed requests.

- Traffic - A measure of how much demand is being placed on your system, measured in a high-level system-specific metric. For a web service, this measurement is usually HTTP requests per second

- Errors - The rate of requests that fail, either explicitly (e.g., HTTP 500s), implicitly (for example, an HTTP 200 success response, but coupled with the wrong content), or by policy (for example, "If you committed to one-second response times, any request over one second is an error")

- Saturation - How "full" your service is. A measure of your system fraction, emphasizing the resources that are most constrained. Note that many systems degrade in performance before they achieve 100% utilization, so having a utilization target is essential.

**Uber**

- No. of app crashes reported: App crash is the abrupt shutting down of an app which can lead to users churning from the application.

- Average Load Time Per Session: This indicates the amount of time it takes for the application to become fully accessible to the user after they have started the session

- Average App Store rating: This plays an important role in app growth as it serves as social proof to indicate the app’s quality of service. It is measured out of 5 and the higher the better.

