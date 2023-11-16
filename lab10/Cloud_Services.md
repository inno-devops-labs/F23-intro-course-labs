
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
