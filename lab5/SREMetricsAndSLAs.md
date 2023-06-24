# GitOps & SRE Lab

## Task 1: Key Metrics for SRE and SLAs

1. The key metrics in SRE are the following:

- Uptime: duration or percentage of time that a software system or service remains operational and available for use
- Response time: measures the time taken for a request to be processed from start to finish.
- Support availability: can user get fast and complete support at any time moment
- Availability: this metric measures the percentage of time a system is operational and accessible to users.
- Error rate: error rate measures the percentage of requests or transactions that result in errors or failures.

2. I will consider SLA for AWS and Microsoft

- [Microsoft](https://www.microsoft.com/licensing/docs/view/Service-Level-Agreements-SLA-for-Online-Services?lang=1) states availability services for each service inside their big company. If it does not met you can get some percents from payment for that but you cannot get more than you paid: "The Service Credits awarded in any billing month for a particular Service or Service Resource will not, under any circumstance, exceed your monthly service fees for that Service or Service Resource, as applicable, in the billing month." Most of the services return 25% of payment if monthly availabilit less tahn 3 nines. (99,9%), if it less than 99& they will return 50%
- [AWS](https://aws.amazon.com/ru/legal/service-level-agreements/) has same approach for the SLA. But their numbers differ from Microsofts. For example: Less than 99.0% but greater than or equal to 98.0% they will return 10%, Less than 98.0% but greater than or equal to 95.0% they will return 25%.

3. By monitoring and analyzing these key metrics, SRE teams can identify areas for improvement, proactively address potential issues, optimize system performance, and drive continuous enhancements to ensure the reliability, availability, and performance of software systems.
