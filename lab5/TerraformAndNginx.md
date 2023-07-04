# Installation

````
brew tap hashicorp/tap
````

````
brew install hashicorp/tap/terraform
````

````
brew update
````

````
brew upgrade hashicorp/tap/terraform
````

# Version

````
Terraform v1.5.2
````

# Configuration

````
touch main.tf
````

````
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "tutorial"
  ports {
    internal = 80
    external = 8000
  }
}
````

````
terraform init
````

````
terraform apply
````

````
terraform show
````

# Change infrastructure

change port in main.tf to 8080

````
terraform apply
````

# Destroy infrastructure

````
terraform destroy
````

# Define variables

Create variables.tf

````
variable "container_name" {
  description = "Value of the name for the Docker container"
  type        = string
  default     = "ExampleNginxContainer"
}
````

change name to 

````
name  = var.container_name
````

````
terraform apply
````

# Query Data with Outputs.

Create file outputs.tf

````
output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.nginx.id
}

output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.nginx.id
}
````

````
terraform apply
````

````
terraform output

container_id = "7890c04ff2b177a629ff4ef841ab0dda3095e23058c0c786390110306e0f15d5"
image_id = "sha256:2002d33a54f72d1333751d4d1b4793a60a635eac6e94a98daf0acea501580c4fnginx:latest"
````