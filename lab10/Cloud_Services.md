# Task 1. Artifact Registries Research

## 1. AWS CodeArtifact
- Amazon solution for storing and sharing artifacts for package managers such as "NuGet CLI, Maven, Gradle, npm, yarn, pip, and twine"
- Possible to connect internal company only artifacts and external world
- Repository can contain artifacts for different package managers - part of a single domain. It is recommended to have a single domain for a single organization

## 2. GCP Artifact Registry
- Registry that stores all dependencies and artifact in containers (sorta like docker)
- Are created in a single Google Cloud project and it can contain multiple repositories
- Repositories can be single or multi regional

## 3. Azure Artifacts
- Microsoft solution for work with "Maven, npm, NuGet, and Python" from both public domain and internal sources
- Greatly integrated into current Integrated Development Environments (VsCode, IntelliJ Idea, etc..)
- Stores dependencies in packages

# Task 2. Serverless Computing Platform Research

## 1. AWS Lambda
- Amazon solution for serverless computations. Integrates with other Amazon products, such as S3, ApiGateway, SnS, etc. 
- Works with "Java, Go, PowerShell, Node.js, C#, Python and Ruby" and has API for working with other languages as well
- Maintains load to server, manages the load balancing, scaling inctances, etc.
- Functions are treated as containers

## 2. GCP Serverless
- **Cloud Run** - abstracts the infrastructure and allows writing code on any language. Automates and manages resource scaling
- **Cloud Functions** - supports writing small snippets of code that responds to state changes. Functions are run on different environments and managed by google platform
- **Service integration** - stuff that glues your applications and handles all the complexity that comes with it

## 3. Azure Serverless (Internet tells it has no fancy name as well as Google service)
- Allows building containerised microservices, Kubernetes applications, functions that are going to be managed by Azure.
- Supports CI/CD for serverless applications
- Integrates with other microsoft products (such as Azure SQL Database, Azure cosmos, etc.) 
