
# Cloud Computing Lab - Artifact Registries and Serverless Computing Platforms

## Task 1: Artifact Registries Research
1. **AWS**
*Amazon Elastic Container Registry (ECR):* is the artifact registry service provided by AWS. It's a fully-managed Docker container registry that makes it easy for developers to store, manage, and deploy Docker container images.

 - Key features include:

     - Fully-managed service that takes care of the infrastructure necessary for storing and managing images.
     - Integrated with Amazon ECS and Amazon EKS, and supports all Docker CLI commands.
     - Provides secure, scalable, and reliable registry for your Docker or Open Container Initiative (OCI) images.
     - Supports image scanning to help identify software vulnerabilities in your container images.

2. **GCP** *Google Cloud's Artifact Registry:* is a single place for managing packages and container images.

    - Key features include:

      -   Supports Docker and OCI formats for container images and several popular package formats such as Maven and npm.
      -  Enables end-to-end artifact management with fully integrated services like Cloud Build and Google Kubernetes Engine (GKE).
      -  Provides vulnerability scanning for container images to help ensure your deployments are secure.
      -  Offers fine-grained access control and detailed audit logs.
3. **Azure** *Azure Container Registry (ACR):* is Microsoft's artifact registry solution in Azure.

    - Key features include:

        - Stores Docker and Open Container Initiative (OCI) images.
        - Integrated with Azure DevOps, Azure Kubernetes Service (AKS), Docker CLI, Helm, and other popular tools.
        - Supports geo-replication to manage a single registry replicated across multiple regions.
        - Provides automated tasks to build Docker files and OS and framework patching.

## Task 2: Serverless Computing Platform Research
AWS
AWS Lambda is the serverless computing platform offered by AWS.

Key features include:

Automatically scales your applications in response to incoming request traffic.
You pay only for the compute time you consume.
Supports code written in Node.js, Python, Java, Go, .NET, Ruby, and custom runtime support.
Integrated with other AWS services for building complex applications.
GCP
Google Cloud Functions is the serverless execution environment in Google Cloud Platform.

Key features include:

Executes your code in response to events, such as changes to data in Firebase, new Pub/Sub messages, or HTTP requests.
Automatically scales up and down in response to incoming events.
Supports Node.js, Python, and Go.
Integrated with Google Cloud Pub/Sub and Google Cloud Storage.
Azure
Azure Functions is the serverless computing service provided by Microsoft Azure.

Key features include:

Allows you to write less code, maintain less infrastructure, and save on costs.
Supports C#, Java, JavaScript, TypeScript, and Python.
Integrated with Azure DevOps, GitHub, and other popular services.
Provides durable functions for defining workflows in code.