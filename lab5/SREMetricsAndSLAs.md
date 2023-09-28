# Task 1

### Key metrics used in Site Reliability Engineering  (SRE)

Google has developed a list of 4 valuable metrics of SRE:

1. **Latency**

Latency means the time between you requesting a service and getting it.

2. **Traffic**

Traffic measures how much activity is present in the application. However, we should note that traffic will depend on the type of application.

3. **Errors**

Errors mean the rate at which users' requests fail. The idea for errors is to inform developers about application bugs, dependency failures, 
or service misconfigurations. 

4. **Saturation**

Saturation measures how full your service is. It can be determined by checking the 99th percentile for latency or 
memory and CPU usage for all applications.

However, except of these metrics we can consider also **availability** metric, which measures the proportion of time that a service is operational and accessible.

### The companies I chose are Amazon Web Services (AWS) and Google

1. **[AWS](https://aws.amazon.com/legal/service-level-agreements/?nc1=h_ls&aws-sla-cards.sort-by=item.additionalFields.serviceNameLower&aws-sla-cards.sort-order=asc&awsf.tech-category-filter=*all):** AWS provides SLA for different services. For example, SLA for Amazon Cloud Directory contains the paragraph about service credits.
This paragraph considers the amount of money, which will be deducted from the total amount to be paid if uptime percentage will be less than 99,9%.
In case of uptime percentage is less than 99,9%, but more or equal to 99%, this deduction will be 10% from the total payment. In case of less 
uptime percentage the percent of deduction will increase to 25% or even 100%.

2. **[Google](https://cloud.google.com/terms/sla):** Goodle Cloud Platform also provides SLAs for a lot of services. For example, the Cloud SQL service promises the
uptime percentage more or equal to 99,99%, which is even more precise than AWS. In terms of Financial Credits it is the same as AWS: the uptime
percentage less than 99,99%, but more or equal to 99,0% is 10% of deduction, when in case of less uptime prcentage it varies 
from 25% to 100% for Enterprise Plus edition and from 25% to 50% for Enterprise edition.

### The importance of the metrics

The metrics, mentioned above, are crucial for meaningful monitoring of the system. Real-time tracking of these metrics will help
software teams to get issues under control much faster. For example:
- _The Service Level Indicator (SLI)_ measurements are responsible for monitoring the error rate, availability of the system. Such continius
monitoring allows to plan the capacity of the system and proactively make things better over time to decrease vulnerability and 
improve performance. For example, such company as Google Cloud has a continius evaluation of the system, they look 
at the SLI to get the service availability percentage and maintain it on the desired level.
- _The Service Level Agreements (SLA)_ (contains such metrics as uptime, response time, 
and support availability) create clear responsibilities of the providers, which can be treated as an agreement of
the level of service a user can expect. It allows to maintain a certain level of reliability of the system.  