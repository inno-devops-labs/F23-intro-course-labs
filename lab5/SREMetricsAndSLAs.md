## Task 1 - Key Metrics for SRE and SLAs
### SRE key metrics:
Here are the key metris used in Site Reability Engineering:
**1. Site Aviability** - reflects percentage of time the website available to users. It measures in percentage of time the web-site is operational. Such metric takes into account planned maintance and any other downtime.

**2. Latency** - average time between receiving user request and sending the response. In some applications, such as trade exchanges, latency plays most crucial role.

**3. Throughput** - volume of data or number of operations the system may process at some unit of time. In cases of peak server load low throughput may significantly affect latency and overall Site Aviability.

**4. Mean Time to Recovery** - measures average recover time after system failure. Low mean time recovery is a basis of robust and failess system. 

### SLA examples:
Here are the two examples of real-world SLAs:
**1. Hootsuite.com** (`https://www.hootsuite.com/legal/enterprise-service-level-agreement`):
Service Availability - the service guarantees aviability at least 99.9% of the time. In case such quota not met, up to 15 additional days into service contract added for each day the quota not met.
**2. Adobe.com** (`https://www.adobe.com/content/dam/cc/en/legal/terms/enterprise/pdfs/SLA-AdobeOn-demand-ManagedServices25FEB2022.pdf`):
Uptime Percentage - the service guarantees aviability at least 99.9% of the time. In case such quota not met, up to 25% of minthly fees can be refunded in a form of service credit added for each month the quota not met.
The terms also specify Excluded Minutes which are not part of uptime calculation. In particular Spikes (>50% increase in the number of daily activities) are part of the exluded minutes.

### Discussion
For a business practice it is essential to understand the risks of depended service unavailability. For instance, if a service utilize a third party adress search engine, it is unacceptable have sudden low api aviability as it shoutdown the service itself. With SLA and leverages to force those terms, businesess may rely on the web-service.
