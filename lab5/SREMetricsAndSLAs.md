# SRE Metrics and SLA's

## SLA

- Service Level Objective (SLO) is target level of reliability
- Service Level Indicator (SLI) is some metrics to measure realibility which depends on type of product
- Service Level Agreement (SLA) is areement of metrics should be maintained to call service reliable

## Yandex Cloud SLA

### YC Compute

SLI: Level of Accessability - 99.95%

### YC Load Balancer

SLI: Level of Accessability - 99.9%

### Extra

Provides compensation for Level of Accessability below stated

[More here](https://yandex.ru/legal/cloud_sla_levels/)

## Google Compute Engine Service

| Covered Service | Monthly Uptime Percentage |
|-|-|
|Instances in Multiple Zones | 99.99% |
|A Single Instance | 99.5% |
|Load balancing | 99.99% |

### Extra

[More here](https://cloud.google.com/compute/sla)