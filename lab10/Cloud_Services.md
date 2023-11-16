
# Cloud Computing Lab - Artifact Registries

## AWS (Amazon Web Services)

### Amazon Elastic Container Registry (ECR)
A fully managed container registry offering high-performance hosting for deploying application images and artifacts anywhere.
- **Key Features**:
  - Easy push and pull of container images without installing or scaling infrastructure.
  - Secure and encrypted image sharing over HTTPS.
  - Integrated vulnerability management service for security compliance.
  - Streamlined deployment of containerized applications.
  - Image lifecycle management with rules and tagging.

### AWS CodeArtifact
A fully managed service for secure, scalable, and cost-effective package management for software development.
- **Key Features**:
  - Supports popular package managers and build tools like Maven, Gradle, npm, and others.
  - Configuration for fetching from public repositories including npm Registry, Maven Central, and PyPI.
  - Automated approval workflows and package usage auditing.
  - Integration with AWS services for automated builds and secure package sharing.

## GCP (Google Cloud Platform)

### Google Container Registry (GCR)
A private storage service for Docker images, used to run containerized apps.
- **Key Features**:
  - Hosting images for deployment on GCP container services like Cloud Run and Kubernetes Engine.
  - Simple to use with standard Docker commands for pushing and pulling images.
  - Affordable storage pricing and optional vulnerability scanning service.

### Artifact Registry
A single place for managing container images and language packages like Maven and npm.
- **Key Features**:
  - Integration with Google Cloud’s tooling and runtimes.
  - Supports native artifact protocols for easy CI/CD integration.

## Azure

A registry for Docker and OCI images, supporting all OCI artifacts.
- **Key Features**:
  - Fully managed, geo-replicated instance.
  - Supports a range of artifacts including Helm charts and OCI artifact-supported formats.
  - Integrated security with Azure Active Directory and role-based access control.
  - Automated container building and patching.
  - Scalable retrieval of container workloads.
  - Continuous image scanning for vulnerabilities.

### Azure Artifacts
Enables the creation, hosting, and sharing of packages like Maven, npm, NuGet, and Python package feeds.
- **Key Features**:
  - Integrates package management into CI/CD pipelines.
  - Supports various package formats.
  - Allows sharing of code across teams and enterprises.
  - Simplifies complex build jobs.


# Task 2: Serverless Computing Platform

## AWS (Amazon Web Services)
- **AWS Lambda**
An event-driven, pay-as-you-go compute service to run code without server management.
  - Key Features:
    - Supports multiple programming languages.
    - Event-driven architecture for automatic scaling.
    - Integration with other AWS services.

- **AWS Fargate**
A serverless compute engine for ECS and EKS.
  - Key Features:
    - Run containers without managing infrastructure.
    - Works with Amazon ECS and EKS.

- **Application integration services** such as Amazon EventBridge, AWS Step Functions, Amazon SQS, Amazon SNS, Amazon API Gateway, and AWS AppSync.

## GCP (Google Cloud Platform)
- **Cloud Run**
A fully-managed platform to develop and deploy scalable containerized applications.
  - Key Features:
    - Use any programming language or library.
    - Charges only for resources used.
    - Integrates with Cloud Build and Cloud Code.

- **Cloud Functions**
  A scalable FaaS platform for running code in response to events.
  - Key Features:
    - Supports multiple runtime environments.
    - Event-driven architecture.
    - No need to manage servers or containers.

## Azure
- **Azure Serverless Compute**
Enables building applications faster by managing the infrastructure.
  - Key Features:
    - Eliminates the need to manage infrastructure for code and containers.

- **Azure Functions**
An event-driven compute service for executing code in various languages.
  - Key Features:
    - Scale on demand and pay only for compute time.
    - Works on multiple destinations including Kubernetes and Azure IoT Edge.

- **Azure App Service**
A platform for running and scaling web, mobile, and API applications.
  - Key Features:
    - High-productivity, fully managed environment.
    - Suitable for a wide range of applications.
