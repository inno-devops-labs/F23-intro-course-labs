# Artifact Registries in AWS, GCP, and Azure

## AWS

- **Amazon Elastic Container Registry (ECR)**
  - A fully-managed container registry to store, manage, and deploy Docker container images.
  - Seamlessly integrates with Amazon Elastic Container Service (ECS) and Amazon Elastic Kubernetes Service (EKS).
  - Supports private Docker repositories for secure access control.

- **AWS CodeArtifact**
  - A fully-managed software artifact repository service.
  - Supports multiple package formats like npm, Maven, and Python packages.
  - Provides centralized artifact management with access control and version tracking.

## GCP

- **Google Cloud Artifact Registry**
  - A single place to manage container images and language packages (such as Maven and npm).
  - Supports Docker images, Maven, npm and more.
  - It is fully integrated with Google Cloud’s tooling and runtimes and comes with support for native artifact protocols.
  - Automatically build and upload artifacts to private repositories when you commit code to Cloud Source Repositories, GitHub, or Bitbucket.
  - Repository-native IAM with granular permissions.

## Azure

- **Azure Container Registry (ACR)**
  - A fully-managed private Docker container registry.
  - Automated container building and patching including base image updates and task scheduling
  - Seamlessly integrates with Azure Kubernetes Service (AKS) and other Azure services.
  - Provides features like geo-replication and Azure Active Directory (Azure AD) integration, role-based access control, Docker Content Trust, and virtual network integration.


- **Azure Artifacts**
  - A universal package management solution for storing and managing artifacts.
  - Supports various package formats like npm, Maven, NuGet, and Python packages.
  - Integrates with Azure DevOps for seamless CI/CD workflows.

# Serverless Computing Platform Research

## AWS

- **AWS Lambda**
  - A serverless compute service that runs code in response to events and automatically manages the underlying compute resources.
  - Natively supports languages: Java, Go, PowerShell, Node.js, C#, Python, and Ruby code.
  - Automatically scales based on incoming request volume.
  - Pay only for the compute time consumed.

- **AWS Fargate**
  - A serverless compute engine that lets you focus on building applications without managing servers.
  - Compatible with both Amazon Elastic Container Service (Amazon ECS) and Amazon Elastic Kubernetes Service (Amazon EKS).
  - Support AI and ML applications.
  - Pay only for the resources used by your containers.

## GCP

- **Google Cloud Functions**
  - A serverless execution environment to run event-driven functions.
  - Supports languages: Node.js, Python, Go, and more.
  - Automatically scales based on request traffic.
  - Integrates with Google Cloud Pub/Sub, Cloud Storage, and other GCP services.
  - Pay when your code is running.

- **Google Cloud Run**
  - A fully managed compute platform for running containerized applications.
  - Supports languages: Go, Python, Java, Node.js, .NET, and Ruby.
  - Automatically scales based on incoming requests and container instances.
  - Pay when your code is running.

## Azure

- **Azure Functions**
  - A serverless compute service to run event-driven code.
  - Supports languages: .NET, Node.js, Java, Python, TypeScript or Powershell.
  - Built-in serverless elasticity to build secure, reliable apps at scale.
  - Built-in Azure DevOps tools for an end-to-end development experience.
  - Flexible hosting options with a pay-per-use model for improved operational efficiency.
  - Automatically scales based on demand and consumption plan.

- **App Service**
  - A Fully managed service with built-in infrastructure maintenance, security patching, and scaling.
  - Supports languages: .NET, .NET Core, Node.js, Java, Python, or PHP.
  - Built-in continuous integration and continuous delivery (CI/CD) and zero-downtime deployments.
  - Support for virtual networks, and ability to run in an isolated and dedicated App Service Environment.

