# Artifact Registries in AWS, GCP, and Azure

In this document, we will explore the artifact registries available in AWS (Amazon Web Services), GCP (Google Cloud Platform), and Azure (Microsoft Azure) and highlight their key features.

## AWS Artifact Registries

1. **Amazon Elastic Container Registry (ECR)**
    - A fully managed container registry for storing, managing, and deploying Docker container images.
    - Secure and scalable with support for encryption and access control policies.
    - Integrates seamlessly with Amazon ECS (Elastic Container Service) and Amazon EKS (Elastic Kubernetes Service).

2. **AWS CodeArtifact**
    - A secure, scalable, and fully managed artifact repository service.
    - Supports Maven, npm, and Python package types.
    - Enables caching and sharing of dependencies to improve build times and reduce latency.

## GCP Artifact Registries

1. **Google Container Registry (GCR)**
    - A private container image registry that stores Docker container images.
    - Integrates well with Google Kubernetes Engine (GKE) and other container orchestration platforms.
    - Provides IAM (Identity and Access Management) controls for fine-grained access control.

2. **Google Cloud Storage**
    - While not a dedicated artifact registry, it can be used to store various types of artifacts, including binary files, archives, and software packages.
    - Highly available and durable storage service with support for versioning and access control.

## Azure Artifact Registries

1. **Azure Container Registry (ACR)**
    - A managed Docker container registry that stores and manages container images.
    - Provides geo-replication for improved availability and disaster recovery.
    - Offers role-based access control to secure image repositories.

2. **Azure Artifacts**
    - A universal artifact management system that supports a variety of package types, including npm, Maven, NuGet, and Python packages.
    - Integrated with Azure DevOps for easy package management in CI/CD pipelines.
    - Allows easy sharing and versioning of artifacts.

## Comparison

Here's a brief comparison of the key features of the artifact registries:

| Registry            | Type         | Package Types   | Integration         | Access Control   |
|---------------------|--------------|-----------------|---------------------|------------------|
| Amazon ECR          | Container    | Docker          | Amazon ECS, EKS     | IAM Policies     |
| AWS CodeArtifact    | Universal    | Maven, npm, PyPi| -                   | IAM Policies     |
| Google Container Registry (GCR)| Container| Docker | GKE           | IAM Permissions  |
| Google Cloud Storage| Universal    | Various         | -                   | IAM Permissions  |
| Azure Container Registry (ACR)| Container | Docker   | Azure, Kubernetes   | RBAC             |
| Azure Artifacts     | Universal    | npm, Maven, NuGet, Python | Azure DevOps| RBAC             |

Please note that the availability of these services and their features may change over time, so it's recommended to refer to the official documentation for the most up-to-date information.

This concludes the overview of artifact registries available in AWS, GCP, and Azure.