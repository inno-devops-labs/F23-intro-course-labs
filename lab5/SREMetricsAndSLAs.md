# SRE Metrics and SLAs

## Key Metrics used in SRE

1. **Service Level Indicators (SLIs)**: measurements of the characteristics of a service. Most commonly these are latency, traffic, error rate and saturation – this group is called the Four Golden Signals.
2. **Service Level Objectives (SLOs)**: key threshold values for each SLI that define the reliability of a service. SLOs are usually expressed as a percentage of uptime.
3. **Service Level Agreements (SLAs)**: agreement between the service provider and customer about service deliverables that highlights your product’s functionality, reliability, and performance.

## SLAs and Reliability Metrics of AWS and Microsoft Azure

### AWS

AWS has a lot of SLAs available for different services. The following are some SLAs for AWS services:

- Compute SLA: up to 99.99% availability for each Amazon EC2(Elastic Compute Cloud) Region.
- Database SLA: up to 99.99% availability for each Amazon RDS (Relational Database Service) Region.
- Storage SLA: up to 99.99% availability for each Amazon S3(Simple Storage Service) Region.

[Link](<(https://aws.amazon.com/legal/service-level-agreements/?nc1=h_ls&aws-sla-cards.sort-by=item.additionalFields.serviceNameLower&aws-sla-cards.sort-order=asc&awsf.tech-category-filter=*all)>) to all AWS SLAs.

### Microsoft Azure

Microsoft Azure also has a lot of SLAs available for different services. The following are some SLAs for Azure services:

- Compute SLA: up to 99.99% availability for each Azure Virtual Machine Scale Sets.
- Database SLA: up to 99.99% availability for each Azure SQL Database.
- Storage SLA: up to 99.99% availability for each Azure Storage.

[Link](<(https://www.microsoft.com/licensing/docs/view/Service-Level-Agreements-SLA-for-Online-Services?lang=1&year=2023)>) to all 2023 Azure SLAs.

### Insights

With such big services it is hard to see differences, as they both offer a great number of services and SLAs with incredibly high availability, especially without working with them deeply.

## Importance of Metrics

Metrics are important because they aid in the decision-making process. They help us understand the current state of the system and how it is performing. They also help us understand how the system is changing over time. This information can be used to make decisions about how to improve the system.
