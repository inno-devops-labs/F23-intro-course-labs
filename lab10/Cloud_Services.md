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

