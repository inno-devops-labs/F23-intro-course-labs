### The key metrics used in SRE:
<b>1. Availability:</b> This metric measures the percentage of time the system is available to users. It is calculated by dividing the total system operating time by the total time during a specified period. High availability is an important indicator of SRE success.

<b>2. Mean Time to Recovery (MTTR):</b> This metric measures the average time required to recover a system after a failure or failure. The lower the MTTR, the faster the system can recover and return to operation.

<b>3. Mean Time Between Failures (MTBF):</b> This metric measures the average time between system failures or failures. The higher the MTBF, the more reliable the system is considered.

<b>4. Throughput:</b> This metric measures the number of operations or transactions that the system can process per unit of time. High throughput is an indicator of system efficiency.

<b>5. Latency:</b> This metric measures the time required for the system to process a request or complete an operation. Low latency is an indicator of the speed and responsiveness of the system.

<b>6. Response Time:</b> This metric measures the time it takes to receive a response from the system after sending a request. It includes the delay plus the request processing time. Fast response time is an indicator of good system performance.

<b>7. Capacity:</b> This metric measures the maximum load that the system can handle without degrading performance. It helps determine how many resources are required to maintain the required level of performance.

These key metrics help SRE engineers evaluate and improve system reliability, performance, and availability, as well as respond to failures and failures.

### Service Level Agreements:

<b>Example 1: Adobe [link](https://www.adobe.com/content/dam/cc/en/legal/terms/enterprise/pdfs/SLA-AdobeOn-demand-ManagedServices25FEB2022.pdf):</b>

| Metrics | Short explanation |
| ------------- | ------------- |
| Downtime | Minutes when services in not availible |
| Excluded Minutes | Minutes when services in not availible due to the fault of the customer |
| Excluded Services | This is a list of services or features that are not included in Adobe's SLA guarantees or obligations. |
| Maximum Uptime | Total Minutes in Calendar Month - Maintence Minutes |
| Maintenance Minutes | The number of minutes elapsed during maintenance performed by Adobe that results in the Covered Service not being Available |
| Minimum Uptime Percentage | 99.9% (?) |
| Spike | Means a >50% increase in the number of daily activities processed by the Covered Service above the normalized daily activity patterns |
| Uptime Percentage | (Maximum Uptime - Downtime) / Maximum Uptime |

<b>Example 2: Google Cloud VPN [link](https://cloud.google.com/network-connectivity/docs/vpn/sla):</b>

| Metrics | Short explanation |
| ------------- | ------------- |
| Covered Service | VPN tunnels under the Google-managed VPN service |
| Downtime | Time where VPN gateway is not able to serve any traffic |
| Downtime Period | Means a period of 120 consecutive seconds of Downtime |
| Financial Credit | Number of refunds to the client for non-functioning services |
| Monthly Uptime Percentage |  (Total Minutes in Calendar Month - Downtime) / Total Minutes in Calendar Month |

### Discussion:

- If we consider <b>uptime</b>, which is used in the two listed companies, then this metric shows how long the services were available to the client. A high percentage of uptime indicates the reliability and stability of the service. If the service is unavailable for an extended period of time, it may cause connectivity issues and loss of performance.
- <b>Downtime</b>, on the contrary, significantly influences the work process in client companies. The larger it is, the smaller the volume of services the company’s employees will be able to perform. And the greater the financial damage to the company that can be caused.
- It was also interesting to note that Google provides refunds for the time that their services were unavailable.
