# Key Metrics for SRE and SLAs

## Key Metrics

1. **Availability** - The proportion of time a system or service is operational and available to users is measured by this statistic.
2. **Error Rate** - The error rate counts the proportion of requests or actions that go wrong or fail.
3. **Latency** - The amount of time it takes for a request or operation to be performed is known as latency.

## Companies

- [HashiCorp](#hashicorp)
- [GitHub](#github)

### Hashicorp

1. **Urgent** - Resolution within 24 hours for Gold SLA and 24 business hours for Silver SLA.

> This severity level is for critical errors that significantly impact users and the customer's ability to conduct business.

2. **High** - Resolution within 3 business days

> This severity level is for errors that affect users and revenue, although a workaround is available.

3. **Normal** - Resolution within 7 business days.

> This severity level covers errors that have high visibility but do not impact revenue.

4. **Low** - First reply within 24 business hours.

> This severity level includes errors that have limited business impact, either affecting a single user severely or a small percentage of users moderately.

Additionally, HashiCorp maintains a status page to provide real-time information on service availability, recent issues, and resolution reports.

### GitHub

1. **Uptime** - guarantees that its Service Features will be available at least 99.9% of the time in any calendar month.

2. **Service Credits** - If GitHub does not meet the Uptime Guarantee, customers may redeem Service Credits equal to 10% or 25% of the amount paid for the affected Service Feature, depending on the level of downtime experienced.

One notable observation is that GitHub's Uptime Guarantee of 99.9% is relatively high compared to other cloud service providers.
