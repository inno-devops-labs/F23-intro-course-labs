# Artifact Registries Research
## AWS
### AWS CodeArtifact
Key features:
- Consuming packages from public artifact repositories (npm, Maven Central, PyPI, and NuGet.org)
- Publishing and sharing organization packages
- Approving and monitoring package usage
- High availability and durability
- Fully managed service
- Centralized artifact management with fine-grained access controls

## GCP
### Google Artifact Registry 
Key features:
- Supports various package formats, including Docker images, Maven, npm, PyPI
- Multiple repositories per Google Cloud project
- Repository-native IAM with granular permissions
- Monitoring and logging capabilities for artifact management

## Azure
### Azure artifacts
Key features:
- Publishing and sharing packages
- Consuming packages from public registries like NuGet.org and npmjs.com
- Supports multiple package types such as NuGet, npm, Python, Maven, Cargo, and Universal Packages
- Offers versioning capabilities for tracking artifact history and fine-grained access control based on IAM or AD roles
- Connects with various workflows, CI/CD pipelines, and integrates with platforms like GitHub, Azure DevOps, and more

# Serverless Computing Platform Research
## AWS
### AWS Lambda
Key features:
- Extend AWS Services with Custom Logic
- Simplifies the creation of functions
- Supports various programming languages
- Offers high availability by maintaining compute capacity across multiple Availability Zones to protect against failures
- Integrated with AWS IAM and runs within an Amazon Virtual Private Cloud (VPC) by default
- Completely automated administration

### AWS Fargate
Key features:
- Flexible configuration options
- Load Balancing
- Auto Scaling
- Logging and Visibility

### AWS Step functions
Key features:
- Component reusability
- Built-in error handling, timeouts, and parallel processing
- High availability and fault-tolerant workflows

## GCP
### Google Cloud functions
Key features:
- Event-Driven execution
- Supports multiple programming languages
- Automatic scaling
- Pay only for the compute resources consumed 

### Google CLoud run
Key features:
- Stateless HTTP containers
- Container support
- Pay-per-use billing

## Azure
### Azure Functions
Key features:
- Trigger based execution
- Pay-per-use pricing model
- Stateful serverless architecture

### Azure App Service
Key features:
- Monitor, route, and publish events 
- Hundreds of connectors are available 
- Seamless integration
- Support for virtual networks