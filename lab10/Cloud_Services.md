# Task 1: Artifact Registries Research

Below are the most popular artifact registries available in AWS, GCP, and Azure, along with their key features.

## AWS Artifact Registries

1. **Amazon Elastic Container Registry (ECR)**
   - Purpose: A fully-managed container registry for storing, managing, and deploying container images.
   - Key Features:
     - Tight integration with Amazon ECS for seamless container deployments.
     - Support for private Docker repositories with access control using AWS Identity and Access Management (IAM).
     - Secure image replication and encryption at rest with AWS Key Management Service (KMS).
     - Lifecycle policies for image versioning and automated clean-up.
   - Reference: [Amazon ECR Documentation](https://aws.amazon.com/ecr/)

2. **AWS CodeArtifact**
   - Purpose: A secure, scalable, and fully managed artifact repository service for software packages.
   - Key Features:
     - Universal package management supporting popular package formats like npm, Maven, PyPI, and more.
     - Fine-grained access control using AWS IAM, allowing secure sharing of packages across accounts.
     - Integrates with popular build tools and package managers for seamless integration.
     - Cache and proxy external repositories to improve build times and reduce external dependencies.
   - Reference: [AWS CodeArtifact Documentation](https://aws.amazon.com/codeartifact/)

## Google Cloud Platform (GCP) Artifact Registries

1. **Google Container Registry (GCR)**
   - Purpose: A private container image registry for storing, managing, and deploying Docker container images.
   - Key Features:
     - High availability and low-latency access for container deployments.
     - Integration with Google Kubernetes Engine (GKE) and Google Cloud Run for easy image deployment.
     - IAM-based access control for secure image repository access.
     - Container analysis and vulnerability scanning for security assessments.
   - Reference: [Google Container Registry Documentation](https://cloud.google.com/container-registry)

2. **Google Cloud Storage**
   - Purpose: A scalable object storage service that can also function as an artifact registry.
   - Key Features:
     - Can store any type of artifacts, not limited to container images.
     - Fine-grained access control using Google Cloud IAM policies.
     - Easy integration with other GCP services, such as Google Kubernetes Engine and Cloud Functions.
     - Cost-effective storage with various storage classes based on data access frequency.
   - Reference: [Google Cloud Storage Documentation](https://cloud.google.com/storage)

## Microsoft Azure Artifact Registries

1. **Azure Container Registry (ACR)**
   - Purpose: A managed private Docker registry service for storing and managing container images.
   - Key Features:
     - Integration with Azure services like Azure Kubernetes Service (AKS) for easy image deployment.
     - Role-Based Access Control (RBAC) to manage user access at different levels.
     - Geo-replication for improved availability and disaster recovery.
     - Scanning for vulnerabilities in container images with Azure Security Center integration.
   - Reference: [Azure Container Registry Documentation](https://azure.microsoft.com/en-us/services/container-registry/)

2. **Azure Artifacts**
   - Purpose: A package management service to host and share packages like npm, NuGet, and Maven.
   - Key Features:
     - Support for multiple package types and formats.
     - Seamless integration with Azure DevOps and other CI/CD tools.
     - Scoped and fine-grained access control using Azure DevOps permissions.
     - Versioning, licensing, and vulnerability tracking for packages.
   - Reference: [Azure Artifacts Documentation](https://azure.microsoft.com/en-us/services/devops/artifacts/)

# Task 2: Serverless Computing Platform Research

Below are the best serverless computing platforms available on AWS, GCP, and Azure, along with their key features.

## AWS Serverless Computing Platforms

1. **AWS Lambda**
   - Purpose: A serverless compute service that lets you run code without provisioning or managing servers.
   - Key Features:
     - Support for multiple programming languages, including Node.js, Python, Java, and more.
     - Automatic scaling, so you only pay for the compute time your code consumes.
     - Integration with various AWS services, event sources, and triggers.
     - Built-in monitoring and logging with Amazon CloudWatch.
   - Reference: [AWS Lambda Documentation](https://aws.amazon.com/lambda/)

2. **AWS Step Functions**
   - Purpose: A serverless workflow service for orchestrating microservices and coordinating distributed applications.
   - Key Features:
     - Visual workflow designer to create and visualize state machines.
     - Integration with AWS Lambda, Amazon ECS, and other AWS services.
     - Reliable execution and error handling for complex workflows.
     - Real-time monitoring and tracing of workflows.
   - Reference: [AWS Step Functions Documentation](https://aws.amazon.com/step-functions/)

## Google Cloud Platform (GCP) Serverless Computing Platforms

1. **Google Cloud Functions**
   - Purpose: A serverless compute service for building event-driven functions.
   - Key Features:
     - Supports multiple languages, including Node.js, Python, Go, and more.
     - Automatic scaling based on the number of requests.
     - Integrates with various GCP services and cloud events.
     - Pay only for the time your functions are running.
   - Reference: [Google Cloud Functions Documentation](https://cloud.google.com/functions)

2. **Google Cloud Run**
   - Purpose: A serverless compute platform for containerized applications.
   - Key Features:
     - Runs stateless HTTP containers on a fully-managed platform.
     - Automatic scaling based on incoming requests and concurrency.
     - Supports standard Docker containers, giving you flexibility.
     - Pay for the actual usage with granular billing.
   - Reference: [Google Cloud Run Documentation](https://cloud.google.com/run)

## Microsoft Azure Serverless Computing Platforms

1. **Azure Functions**
   - Purpose: A serverless compute service that enables event-driven code execution.
   - Key Features:
     - Supports multiple languages, including C#, JavaScript, Python, and more.
     - Automatic scaling based on the number of events.
     - Integrates with various Azure services and event sources.
     - Pay only for the time your functions are running.
   - Reference: [Azure Functions Documentation](https://azure.microsoft.com/en-us/services/functions/)

2. **Azure Logic Apps**
   - Purpose: A serverless workflow service for building automated workflows and integrations.
   - Key Features:
     - Visual workflow designer with hundreds of pre-built connectors.
     - Integration with Azure services and external systems.
     - Reliable execution and error handling for complex workflows.
     - Monitoring and tracking of workflows.
   - Reference: [Azure Logic Apps Documentation](https://azure.microsoft.com/en-us/services/logic-apps/)