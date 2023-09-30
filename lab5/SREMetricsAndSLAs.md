# Site Reliability Engineering

## Key metrics

- **Latency**: how long it takes for server to fullfill client response. Clients are generally displeased with the services wich takes an astronomical amount of time to fullfill request.
- **Errors**: Number of requests that end with errors. They surely indicate something is wrong with the services.
- **Traffic**: Indicates how loaded the service is. High traffic could indicate potential attacks on services
- **Saturation**: How much of the computing resources are used. High usage could lead to throttling and decreased performance

## Publicly available SLA

- **Amazon Web Services**
  - They provide a long list of services, such as Amazon S3, Amazon Workspaces, etx. each of which contains SLA. The main interesting pont is they don't provide guarantees on duration. The only thing provided is the promised uptime of services
- **Yandex Cloud**
  - They provice list of services as well, such as Yandex MQ, Yandex LoadBalancing, etc. They also don't provide duration guarantees. The only thing provided across the services is the acceptable amount of errors (responses of forms 50X from services)

## Importance of the metrics

The importance of the metrics is hard to underestimate. They play crucial role in providing continious and consistent user experience. Having access to error metrics, engineers could understand something is wrong with their services on time. Duration metrics could indicate potential infrastructural problems with the services.