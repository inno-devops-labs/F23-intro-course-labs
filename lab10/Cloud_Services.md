# Artifact Registries Research

Each service is designed to integrate seamlessly with the respective cloud provider's ecosystem, 
enabling streamlined workflows and easy access control using IAM or other authentication methods. 
Additionally, automatic security scanning capabilities are available across the registries, 
enhancing the overall security posture of your artifacts.

Ultimately, the choice of artifact registry may depend on your existing cloud provider preference, 
the types of artifacts you work with, and the integration requirements with other services 
in your development and deployment pipelines.

## AWS

- **Amazon Elastic Container Registry (ECR)**
  - A fully managed Docker container registry.
  - Integrated with other AWS services, such as Amazon ECS, Amazon EKS, and AWS CodePipeline.
  - Automatic security scanning for container images using Amazon Inspector.
  - Provides lifecycle policies to manage image versions and archive unused images.

- **Amazon CodeArtifact**
  - A managed artifact repository service that supports software packages.
  - Compatible with popular package formats like npm (Node.js), Maven (Java), PyPI (Python), NuGet (.NET) and more.
  - Integrates with AWS CodePipeline and AWS CodeBuild for streamlined continuous integration and delivery workflows.
  - Offers access control for your team using AWS IAM.


## GCP

- **Google Cloud Artifact Registry**
  - It is a single place for you to manage container images AND language packages.
  - Supports Docker images, Maven, npm and more.
  - Integrates with Cloud Build, Google Cloud CI/CD services or your existing CI/CD tools.
  - It allows to deploy artifacts to Google Cloud runtimes, including Google Kubernetes Engine, Cloud Run, Compute Engine, and App Engine.
  - Automatic security scanning for container images using Artifact Analysis.
  - Supports IAM access control.


## Azure 

- **Azure Container Registry**
  - A fully managed Docker container registry.
  - Integrates seamlessly with Azure Kubernetes Service (AKS) and other Azure services.
  - It supports Docker-compatible container images and a range of content artifacts including Helm charts and Open Container Initiative (OCI) image formats.
  - Enables geo-replication for improved availability and disaster recovery.
  - It supports virtual network configuration with Private Link.
  - Provides role-based access control using Azure Active Directory.

- **Azure Artifacts**
  - A universal package repository supporting various package formats, including npm, NuGet, Maven, and more.
  - Integrates with Azure Pipelines for streamlined continuous integration and delivery workflows.
  - Provides granular access controls through Azure DevOps security groups.
  - Offers versioning and dependency management for packages.


# Serverless Computing Platform Research

Each cloud platform provides a strong serverless computing offering, 
allowing developers to focus on writing code without worrying about infrastructure management. 
When choosing the best serverless computing platform, consider factors such as programming language support, 
integration with other services in your cloud ecosystem, and pricing models.

## AWS

- **AWS Lambda**
  - AWS Lambda is a serverless compute service that lets you run code without managing servers.
  - Supports a wide range of programming languages, including Node.js, Python, Java, Go, and more.
  - Triggers can be set up to automatically invoke functions in response to events from various AWS services or HTTP requests.
  - Pay-as-you-go pricing, where you only pay for the compute time your functions consume.

- **AWS Fargate**
  - Serverless solution for running docker containers.
  - It is compatible with both Amazon Elastic Container Service (ECS) and Amazon Elastic Kubernetes Service (EKS).
  - Supports AI and ML applications.
  - Pay for requested resources instead of EC2 instances.

- **AWS SAM**
  - It is an extension of AWS CloudFormation, designed to simplify the development and deployment of serverless applications on AWS.
  - It provides a higher-level abstraction for defining serverless resources, such as Lambda functions, API Gateway, and more.
  - SAM CLI allows for local testing of Lambda functions before deployment, improving the developer workflow.

## GCP

- **Google Cloud Functions**
  - Google Cloud Functions is a serverless execution environment that automatically scales in response to incoming traffic.
  - Supports multiple languages, such as Node.js, Python, Go, and more.
  - Can be triggered by various events from GCP services or HTTP requests.
  - Billing is based on the number of function invocations and the execution time.

- **Google Cloud Run**
  - It is a fully managed serverless compute platform for containers.
  - Abstracts away all infrastructure management.
  - It allows you to run containers on a fully managed environment or in your own GKE cluster.
  - Scales automatically based on traffic and only charges for the resources used during execution.

## Azure

- **Azure Functions**
  - Azure Functions is a serverless compute service that enables you to run event-driven code without managing infrastructure.
  - Supports multiple languages like C#, JavaScript, Python, Java, and more.
  - Integrates seamlessly with various Azure services and can be triggered by events from these services or HTTP requests.
  - Billed based on the number of executions and execution time.

- **Azure Container Apps**
  - Serverless solution for running containers.
  - Supports auto-scaling.
  - Integrated into Azure ecosystem allowing to use it in conjunction with other Azure services.

- **App Service**
  - Another serverless solutions specifically for web apps.
  - CI/CD with zero-downtime deployments.
  - Virtual networks in isolated environment.
