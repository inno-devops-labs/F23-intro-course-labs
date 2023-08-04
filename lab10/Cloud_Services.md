# Cloud Computing Lab - Artifact Registries and Serverless Computing Platforms
## Task 1: Artifact Registries Research
 1. Why called serverless?
    - Serverless means that the developers can do their work without having to worry about servers at all

### Amazon Elastic Container Registry (ECR)
- Fully managed Docker container registry; - Seamless integration with Amazon ECS and EKS for container deployment.
- Has Amazon CloudWatch monitoring integration.
- Supports Docker container images.

### AWS CodeArtifact
- A managed artifact repository that offers software assets. works with popular package managers for Python such as npm, Maven, and pip.
- permits the sharing of packages between AWS accounts.

## Google Cloud Platform (GCP)
### Google Container Registry
- A Google Cloud private container image storage solution that seamlessly connects with Google Kubernetes Engine (GKE) for container orchestration.
- Use global replication for improved availability and speedier image retrieval.
### Google Artifact Registry
- Supports the hosting, maintenance, and hosting of container images for software applications.
- Possibilities for multi- and regional data replication.

## Microsoft Azure
### Azure Container Registry
- This fully managed private container registry is seamlessly connected with the Azure Kubernetes Service (AKS) and other Azure services.
It supports Docker images and Helm charts.
- Provides geo-replication for improved availability and performance.
- Offers authentication and permission based on Azure Active Directory.
### Azure Artifacts
- A hosting facility for all bundles of software artifacts. uses reputable package managers like Maven, NuGet, and npm.
  It makes it possible for projects and organizations to share packages.

## Task 2: Serverless Computing Platform Research
## Amazon Web Services (AWS)
### AWS Lambda
- A fully managed serverless compute service.
- Supports a wide range of programming languages.
- Automatically scales in response to the number of incoming requests.
- Pay only for the time spent computing.
- By connecting with other AWS services, supports an event-driven architecture.

### AWS Fargate
- A container serverless compute engine that allows you to run containers without worrying about the infrastructure.
  The use of Docker containers is supported.
- Scales well to accommodate workload demands.
- has connections to Amazon ECS and EKS for container orchestration.

## Google Cloud Platform (GCP)
### Google Cloud Functions
- A serverless compute service that supports several programming languages and is event-driven.
- Scales automatically based on frequency of occurrence.
- Integrates seamlessly with other GCP services.
- Only cover compute time that is actually consumed.

### Google Cloud Run
- A completely managed serverless platform built on containers.
- Support for Docker containers.
- Integrates with Istio for complex networking functions.

## Microsoft Azure
### Azure Functions
- An event-driven serverless compute service.
- Supports a wide range of programming languages.
Billing should be based on actual resource usage.

### Azure App Service
- Supports a range of frameworks and programming languages; Web app development, deployment, and scaling platform.
- Offers serverless computing alternatives with auto-scaling.
- connects to Azure Functions in case there are event-related scenarios.
- Aids in the integration and deployment of containers.