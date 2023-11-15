# Task 1: Artifact Registries Research

## AWS (Amazon Web Services)
### 1. Amazon Elastic Container Registry (ECR)
- **Description:** Amazon ECR is a fully managed container registry service that makes it easy for developers to store, manage, and deploy Docker container images.
- **Key Features:**
    - Tight integration with Amazon ECS (Elastic Container Service) and Kubernetes.
    - Secure and private container image storage.
    - Supports image lifecycle policies and image scanning for security vulnerabilities.
    - Regional availability for improved performance and availability.
### 2. AWS CodeArtifact
- **Description:** AWS CodeArtifact is a package management service that makes it easy for organizations to securely store and share software packages.
- **Key Features:**
    - Supports multiple package formats, including npm, Maven, PyPI, and others.
    - Fine-grained access control and integration with AWS Identity and Access Management (IAM).
    - Dependency tracking and vulnerability scanning for packages.
    - Regional availability for improved latency and compliance.

## GCP (Google Cloud Platform)
### 1. Google Container Registry (GCR)
- **Description:** Google Container Registry is a fully managed Docker container registry that allows users to store, manage, and deploy container images.
- **Key Features:**
    - Seamless integration with Google Kubernetes Engine (GKE).
    - Private image repositories with IAM-based access control.
    - Automated vulnerability scanning for container images.
    - Multi-region availability for optimized global access.
### 2. Google Artifact Registry
- **Description:** Google Artifact Registry is a multi-language, fully managed package registry service for storing and managing software packages.
- **Key Features:**
    - Supports popular package formats such as Docker, Maven, npm, and more.
    - Versioning and metadata management for packages.
    - Integration with Google Cloud IAM for access control.
    - Regional availability for reduced latency.

## Azure (Microsoft Azure)
### 1. Azure Container Registry (ACR)
- **Description:** Azure Container Registry is a container image registry that allows users to store and manage container images for Azure deployments.
- **Key Features:**
    - Integration with Azure Kubernetes Service (AKS) and Azure DevOps.
    - Role-based access control (RBAC) for image repositories.
    - Geographically replicated registries for redundancy and compliance.
    - Vulnerability scanning and image signing capabilities.
### 2. Azure Artifacts
- **Description:** Azure Artifacts is a package management service that enables organizations to host and share software packages.
- **Key Features:**
    - Support for package formats like npm, NuGet, Maven, and others.
    - Scoped feeds with fine-grained access control using Azure Active Directory (AAD).
    - Versioning and package promotion features.
    - Regional availability for improved performance and compliance.


# Task 2: Serverless Computing Platform Research

## AWS (Amazon Web Services)
### 1. AWS Lambda
- **Description:** AWS Lambda is a serverless compute service that allows you to run code in response to events and triggers without managing servers. I personally love it because it can run pre and post-processing scripts and manipulate different services such as DynamoDB and S3 etc.
- **Key Features:**
    - Support for multiple programming languages including Node.js, Python, Java, and more.
    - Event-driven architecture for automatic scaling.
    - Seamless integration with other AWS services like API Gateway, S3, and DynamoDB.
    - Granular pricing based on actual compute usage.
### 2. AWS Fargate (ECS and EKS)
- **Description:** AWS Fargate is a serverless container service that enables you to run containers without managing the underlying infrastructure.
- **Key Features:**
    - Run Docker containers without EC2 instances.
    - Auto-scaling and load balancing.
    - Integration with AWS VPC for network isolation.
    - Support for AWS Elastic Kubernetes Service (EKS) and Elastic Container Service (ECS).
## GCP (Google Cloud Platform)
### 1. Google Cloud Functions
- **Description:** Google Cloud Functions is Google's serverless compute service for executing single-purpose functions in response to events. This is equivalent of AWS Lambda and works more and less similar.
- **Key Features:**
    - Supports multiple runtime environments including Node.js, Python, Go, and more.
    - Event-driven architecture with triggers from various Google services.
    - Integration with Google Cloud Pub/Sub, Cloud Storage, and more.
    - Automatic scaling and pay-as-you-go pricing.
### 2. Google App Engine
- **Description:** Google App Engine is a fully managed platform for building and deploying applications. It abstracts away infrastructure management, allowing you to focus on writing code. This is also one of my personal favourite services.
- **Key Features:**
    - Supports multiple programming languages including Python, Java, Node.js, Go, and more.
    - Automatic scaling based on incoming traffic.
    - Managed environment for web applications, APIs, and backend services.
    - Integration with Google Cloud services and Google Identity Platform for authentication.
    - Flexible environment that allows you to run custom containers alongside standard runtimes.

## Azure (Microsoft Azure)
### 1. Azure Functions
- **Description:** Azure Functions is Microsoft Azure's serverless compute service for building and deploying event-driven functions.
- **Key Features:**
    - Support for multiple languages including C#, Node.js, Python, and more.
    - Event triggers from Azure services, HTTP requests, and custom triggers.
    - Integration with Azure Logic Apps and Event Grid.
    - Consumption-based pricing model.

### 2. Azure App Service (with Azure Functions)
- **Description:** Azure App Service is a platform for hosting web applications and APIs, and it can also host serverless functions with Azure Functions.
- **Key Features:**
    - Support for various programming languages.
    - Scalable and fully managed hosting environment.
    - Integration with Azure DevOps for continuous deployment.
    - Pay-as-you-go pricing.
