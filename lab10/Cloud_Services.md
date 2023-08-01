# Artifact Registries and Serverless Computing Platforms

## Artifact Registries Research

### AWS Artifact Registries

#### Elastic Container Registry (ECR)

-   Fully-managed Docker container registry
-   Integrated with other AWS services
-   Supports Docker and OCI images
-   Access via CLI or console
-   Built-in IAM access control and security

#### CodeArtifact

-   Manages software packages like Maven, npm, Python etc
-   Supports popular formats like npm, Maven, NuGet
-   Access via CLI, SDKs or console
-   Works with common DevOps tools
-   Fine-grained access controls

### GCP Artifact Registries

#### Artifact Registry

-   Docker container registry for Docker and OCI images
-   Low-latency and highly available
-   Integrated Role-Based Access Control (RBAC)
-   Automatic vulnerability scanning
-   Caches images in regional edge locations

#### Package Registry

-   Registry for Maven, npm and PyPI packages
-   Proxy cache for popular public registries
-   Supports hosting private packages
-   Integrated with GCP services and tools

### Azure Artifact Registries

#### Container Registry

-   Store and manage container images and related artifacts
-   Integrated with ACR Tasks for building containers
-   Geo-replicated and highly available
-   Access via Azure CLI, portal, SDK
-   Fine-grained access based on Azure role-based access control (RBAC)

#### Package Registry (NPM, NuGet, Maven)

-   Hosts and manages packages from public and private sources
-   Connects to workflows, CI/CD pipelines etc
-   Integrated with GitHub, Azure DevOps etc.
-   Automatic vulnerability scanning
-   Official support for npm, NuGet, Maven types

---

## Serverless Computing Platform Research

### AWS Serverless Platform

#### AWS Lambda

-   Run code without managing servers
-   Integrated with many AWS services
-   Multiple languages supported (Node.js, Python, Java, etc)
-   Pay per request and compute time
-   Auto-scaling, built-in high availability

#### Amazon API Gateway

-   Create, manage, and secure APIs
-   Serverless, scalable and low cost
-   Integrates with Lambda, AWS services
-   Support API caching, rate limiting, user authentication

### GCP Serverless Platform

#### Cloud Functions

-   Trigger code execution in response to events
-   Write code in Python, Node.js, Go
-   Integrated with Cloud Storage, Pub/Sub, Firebase etc.
-   Auto-scales, no servers to manage
-   Pay only for compute resources used

#### Cloud Run

-   Deploy stateless containers as serverless services
-   Supports any language and framework
-   Auto-scales to zero and provisions on demand
-   Granular billing per request and compute time

### Azure Serverless Platform

#### Azure Functions

-   Execute code in a serverless environment
-   Choice of languages - C#, Java, JavaScript, Python, PowerShell
-   Integrations with wide range of Azure services
-   Auto-scaled based on demand
-   Usage-based pricing per execution

#### Azure Logic Apps

-   Create automated workflows and business processes
-   Visually design workflows with drag and drop
-   Library of pre-built connectors and templates
-   Integrate apps, data, systems easily
-   Serverless execution with consumption-based pricing
