# SRE Metrics And SLAs

---

## Key metrics

- Availability

- Mean Time To Recovery

- Mean Time Between Failures

**Availability** is a metric that corresponds
to the time for an application to run without downtime.
This metric, usually, is determined in advance
in specific documents (SRO and SLI)
by SRE engineer and product manager (or product owner)

**MTTR** is a metric that corresponds
to the time that application recovers from error.
Usually, metric could be improved
by automating recovering process

**MTBF** is a metric that corresponds
to the time period between errors.
Usually, this metric could be improved
by code reviews from SRE engineer and
overall code quality improvement

## SLAs examples

### Microsoft Teams

Microsoft guarantees that Microsoft Teams
should have at least 99.9% uptime.
If it less, they provide "Applicable Monthly Service Fees"
to clients:

- if less than 99.9%, then 25% of fees

- if less than 99% then 50%

- if less than 95% then 100%

[Reference](https://www.microsoft.com/licensing/docs/view/Service-Level-Agreements-SLA-for-Online-Services)

### Google BigQuery

Google guarantees that Google BigQuery
should have at least 99.99% uptime
(except Standard edition)
and 99.9% (Standard edition).
If it less, they provide "Finantial credits"
to clients:

#### Except Standard edition

- if less than 99.99%, then 10%

- if less than 99% then 25%

- if less than 95% then 50%

#### Standard edition

- if less than 99.9%, then 10%

- if less than 99%, then 25%

- if less than 95%, then 50%

[Reference](https://cloud.google.com/bigquery/sla)