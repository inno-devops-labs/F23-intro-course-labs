# Task 1: Artifact Registries Research

## Amazon Web Services (AWS):

### Amazon Elastic Container Registry (ECR)

- Fully managed Docker container registry that makes it easy to store, manage and deploy Docker container images
- Seamlessly integrates with Amazon Elastic Kubernetes Service (EKS) and AWS Fargate for containerized applications
- Supports Amazon ECR Public, allowing public repositories for sharing container images with the global community

### AWS CodeArtifact

- Fully managed software artifact repository service for securely storing, publishing, and sharing software packages
- Supports popular package formats like npm, Maven, Python and more
- Provides fine-grained access control and integrates with AWS Identity and Access Management (IAM)

## Google Cloud Platform (GCP):

### Google Cloud Artifact Registry

- Private, secure and fully managed Docker container registry that supports container images and other binary artifacts
- Provides integration with other GCP services like Google Kubernetes Engine (GKE) and Cloud Functions
- Supports multiple regions and provides automatic vulnerability scanning for container images

### Google Cloud Storage

- Although not a dedicated artifact registry, Google Cloud Storage can be used as versatile object storage service to store and manage various types of artifacts, including binary files, archives and more
- Provides features like fine-grained access control, versioning, and lifecycle management for objects

## Microsoft Azure:

### Azure Container Registry

- Managed Docker container registry service that allows you to store and manage container images for Docker deployment
- Integrates with Azure Kubernetes Service (AKS) and other Azure services for easy container deployment
- Offers geo-replication to keep container images highly available across different regions

### Azure Artifacts

- Fully integrated package management service to create, host and share Maven, npm, NuGet and Python packages
- Supports multiple package types and provides role-based access control for secure package sharing

# Task 2: Serverless Computing Platform Research

## Amazon Web Services (AWS):

### AWS Lambda

- Serverless compute service that automatically scales and manages infrastructure for running code in response to events
- Supports multiple programming languages, event sources and integrates with other AWS services for building event-driven architectures
- Pay only for compute time consumed

### AWS Step Functions

- Serverless workflow service that allows to coordinate distributed applications and microservices using visual workflows
- Supports complex state machines, retries and error handling to build scalable and resilient applications

## Google Cloud Platform (GCP):

### Google Cloud Functions

- Event-driven serverless functions that automatically scale in response to incoming events
- Supports multiple programming languages and integrates with various GCP services for building serverless applications
- Pay only for compute time used, with generous free tier

### Google Cloud Workflows

- Serverless orchestration service that allows to connect serverless functions and services using visual workflows
- Supports error handling, retries and direct integration with Google Cloud Functions and other GCP services

## Microsoft Azure:

### Azure Functions

- Event-driven serverless compute service that allows to run code in response to events from various sources
- Supports multiple programming languages and integrates with other Azure services for building serverless applications
- Pay only for the compute resources used, with consumption-based pricing model

### Azure Logic Apps

- Serverless workflow service that enables to automate business processes and integrate with various SaaS and on-premises applications
- Provides wide range of connectors and templates to build complex workflows without writing code
