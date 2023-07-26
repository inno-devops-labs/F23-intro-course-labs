1. Artifact Registries Research

1.1 AWS (Amazon Web Services):

Amazon Elastic Container Registry (ECR): This service provides a fully managed container registry to store, manage, and deploy Docker container images. It integrates seamlessly with other AWS services like Amazon ECS (Elastic Container Service) and Amazon EKS (Elastic Kubernetes Service).

AWS CodeArtifact: This is a fully managed artifact repository service that makes it easy to store, share, and manage software packages. It supports popular package formats like Maven, npm, Python (PyPI), and more.

1.2 GCP (Google Cloud Platform):

Google Container Registry: This is a private container image registry that allows you to store, manage, and secure your Docker container images. It's integrated with other GCP services like Google Kubernetes Engine (GKE) and Google Cloud Run.

Google Cloud Storage: While not specifically an artifact registry, Google Cloud Storage can be used as a general-purpose object storage service to store binary artifacts and other files.

1.3 Azure (Microsoft Azure):

Azure Container Registry: This service provides a secure and private registry for Docker container images. It integrates with Azure services like Azure Kubernetes Service (AKS) and Azure App Service.

Azure Artifacts: This is a package management service that allows you to create and share packages like NuGet, npm, Maven, and Python (PyPI) artifacts. It's integrated with Azure DevOps and supports multiple programming languages.

2. Serverless Computing Platform Research

2.1 AWS (Amazon Web Services):

AWS Lambda: AWS Lambda is a serverless compute service that lets you run code without provisioning or managing servers. It supports a wide range of programming languages, and you pay only for the compute time consumed by your functions. Lambda can be integrated with other AWS services to build powerful serverless architectures.
GCP (Google Cloud Platform):

2.2 Google Cloud Functions: Google Cloud Functions is GCP's serverless compute service, allowing you to run event-driven functions in response to various triggers. Similar to AWS Lambda, it supports multiple languages and scales automatically based on demand.

Google Cloud Run: Although not a traditional serverless compute service, Google Cloud Run is a fully managed compute platform that automatically scales containers based on incoming requests. It provides a serverless-like experience for containerized applications.

2.3 Azure (Microsoft Azure):

Azure Functions: Azure Functions is a serverless compute service that enables event-driven execution of code in various languages. It supports triggers from various Azure services and external sources, making it easy to build serverless workflows.

Azure Logic Apps: While not strictly serverless computing, Azure Logic Apps is an integration service that allows you to automate workflows and integrate services without writing code. It can be used in conjunction with Azure Functions to build complex serverless architectures.