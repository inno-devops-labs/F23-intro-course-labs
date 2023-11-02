
## Task 1: Artifact Registries Research

#### I. AWS Artifact Registry
- **Amazon Elastic Container Registry (ECR):** Its a fully-managed Docker container registry that makes it easy for developers to store, manage, and deploy Docker container images. 
    - **Key features**
        - It is integrated with Amazon Elastic Container Service (ECS), simplifying the development to production workflow.
        - Simplifies development to production workflow.
        - Secure: Manages access control using AWS IAM and VPC.
        - Highly scalable: Automatically scales to meet our requirements

#### II. Azure Artifact Registry
- **Azure Container Registry:** Azure offers the Azure Container Registry, its a managed, private Docker registry service that stores and manages the container images for Azure deployments. 
    - **Key features**
        - It integrates well with orchestrators hosted in Azure Container Service, including Docker Swarm, Kubernetes, and DC/OS
        - Stores and manages container images for Azure deployments.
        - Integrates with Azure Kubernetes Service (AKS).
        - Geo-replication capabilities: Enables an efficient, network-close registry in multiple regions.
        - Security: Uses Azure Active Directory to authenticate users and control access

#### III. GCP Artifact Registry
- **Google Container Registry:** Google Cloud Platform (GCP) provides the Google Container Registry, a private Docker storage for container images on Google Cloud. 
    - **Key features**
        - It offers advanced security features such as vulnerability scanning and access control options
        - Integrated with GCP’s CI/CD tooling and Google Kubernetes Engine

- **Google Artifact Registry:** In addition to the Google Container Registry, GCP also offers the Google Artifact Registry, which extends the capabilities of Container Registry. It's a more comprehensive service that allows us to manage and secure our software artifacts, including container images, language packages, and more, in a single location
    - **Key features**
        - Unified control plane for container, OS and language repositories.
        - Supports Docker images, Maven and npm packages.
        - Granular permission model with Cloud IAM.
        - Supports regional and multi-regional repositories.



## Task 2: Serverless Computing Platform Research

#### I. AWS Serverless Platform
- **AWS Lambda:** AWS offers AWS Lambda as its leading serverless computing platform. It lets us run our code without provisioning or managing servers. we pay only for the compute time we consume. It automatically scales our application by running code in response to each trigger
    - **Key features**
        - No server management required: Runs our code without provisioning or managing servers.
        - Automatic scaling: Automatically scales our application by running code in response to each trigger.
        - Pay only for the compute time we consume.
        - Supports a variety of programming languages

#### II. Azure Serverless Platform
- **Azure Functions:** Azure Functions is Azure's serverless computing service. It allows us to run small pieces of code (functions) without worrying about explicitly provisioning or managing infrastructure. It supports a variety of programming languages, including JavaScript, C#, Python, and PHP,.. etc.
    - **Key features**
        - Event-driven: Triggers our code to run when specific events occur.
        - Integrated with other Azure services.
        - Supports a variety of programming languages, including JavaScript, C#, Python, and PHP.
        - Durable Functions: Enables us to define stateful workflows

#### III. GCP Serverless Platform
- **Google Cloud Functions:** Google Cloud Functions is GCP's serverless execution environment for building and connecting cloud services. It provides a simple, single-purpose (functions as a service) development model that lets us build applications and services at scale
    - **Key features**
        - Event-driven: Executes our code in response to events, such as changes to data in Firebase, a new Pub/Sub message, or an HTTP request.
        - same as AWS, Pay only for the compute time we consume.
        - Integrated with GCP’s data analytics and machine learning services
