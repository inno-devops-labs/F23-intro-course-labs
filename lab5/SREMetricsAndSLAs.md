# SRE (Amirlan Sharipov)
Info taken from https://pagertree.com/blog/sre-availability-metrics and https://blog.invgate.com/sre-signals

## Key metrics

### Hardware-related monitoring -- USE method
- Utilization (% time that the resource was busy)
- Saturation (amount of work resource has to do, often queue length)
- Errors (count of error events)

### Services-related monitoring -- RED method
- Rate (the number of requests per second)
- Errors (the number of those requests that are failing)
- Duration (the amount of time those requests take)

## SLAs
- [Amazon API Gateway](https://aws.amazon.com/api-gateway/sla/?did=sla_card) Depending on monthly uptime percentage, consumers may receive a compensation. API Gateway aims to be available for at least 99.95% of time.
- [Vultr](https://www.vultr.com/legal/sla/) For example, for a time frame of less than 9 minutes, consumer may receive 12 hours of credit amount, if they request it by a support ticket. Also they guarantee packet loss of <1% in their own network.

## Importance of SRE metrics
It's always important to make your service available to the customers. Some of the do very important stuff. Otherwise they may choose your competitors. That's why companies have to maximize the metrics and provide credits in case of unavailability.
