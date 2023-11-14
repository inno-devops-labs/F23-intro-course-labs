# Cloud Services Artifact Registries

## AWS

### Amazon Elastic Container Registry (ECR)
- **Key Features:**
  - Fully managed Docker container registry service.
  - Integrates with AWS services like ECS, EKS, and Lambda.
  - Supports Docker CLI and Docker API for container image management.
  - High availability and scalability with automated image lifecycle policies.
  - Secure image storage with resource-based permissions and encryption.

### AWS CodeArtifact
- **Key Features:**
  - Package repository service for software artifacts (e.g., Maven, npm, Python).
  - Public and private artifact repositories.
  - Integrates with AWS CodeBuild and CodePipeline.
  - Fine-grained access control and permissions.
  - Dependency tracking and vulnerability scanning.
 
### AWS Lambda
- **Key Features:**
  - Event-driven serverless computing platform.
  - Supports multiple programming languages (Node.js, Python, Java, etc.).
  - Automatic scaling based on incoming requests.
  - Integration with various AWS services and event sources.
  - Pay-per-use pricing model.

### AWS Fargate
- **Key Features:**
  - Serverless container management platform.
  - Run containers without managing the underlying infrastructure.
  - Supports Docker containers and Kubernetes.
  - Efficient resource utilization and cost optimization.
  - Seamless integration with AWS ECS and EKS.

## Google Cloud Platform (GCP)

### Google Container Registry (GCR)
- **Key Features:**
  - Private Docker container image registry integrated with Google Cloud.
  - Integration with Google Kubernetes Engine (GKE).
  - Global distribution and high availability.
  - Access control using IAM roles and permissions.
  - Integration with GCP services like Cloud Build and Artifact Registry.

### Google Artifact Registry
- **Key Features:**
  - Universal package repository for software artifacts.
  - Supports multiple package formats (Docker, Maven, npm, etc.).
  - Integrates with Cloud Build, Cloud Run, and other GCP services.
  - Fine-grained access control and IAM policies.
  - Artifact versioning and metadata management.

### Google Cloud Functions
- **Key Features:**
  - Event-driven serverless computing platform.
  - Supports multiple programming languages (Node.js, Python, Go, etc.).
  - Automatic scaling and load balancing.
  - Integration with GCP services like Cloud Storage, Pub/Sub, and Firestore.
  - Pay-per-use pricing model.
    
### Google Cloud Run
- **Key Features:**
  - Serverless container platform for stateless applications.
  - Run containers in response to HTTP requests.
  - Autoscaling based on traffic.
  - Supports Docker containers and container orchestration.
  - Integration with GCP services and IAM for access control.

## Microsoft Azure

### Azure Container Registry (ACR)
- **Key Features:**
  - Private Docker container registry service.
  - Integration with Azure Kubernetes Service (AKS).
  - Geo-replication for global image distribution.
  - Role-based access control (RBAC) and Azure AD integration.
  - Vulnerability scanning and image signing.

### Azure Artifacts
- **Key Features:**
  - Universal package repository for software packages.
  - Supports popular formats (npm, NuGet, Maven, etc.).
  - Integration with Azure DevOps for CI/CD.
  - Versioning, access control, and package caching.
  - Artifact feed management and audit logs.
 
### Azure Logic Apps
- **Key Features:**
  - Serverless workflow automation platform.
  - Visual designer for building workflows.
  - Integration with over 200 connectors for various services.
  - Event-driven execution and monitoring.
  - Pay-as-you-go pricing.
