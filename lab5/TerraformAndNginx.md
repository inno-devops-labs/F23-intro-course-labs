# Installation
1. Download pre-compiled binary file
2. Add path to a binary file to PATH variable.

Version of installed Terraform:
    
    Terraform v1.5.7

# Building infrastructure
1. Create working directory
        
        mkdir terraform

2. Create file with configuration
        
        touch main.tf

3. Include configuration
        
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

4. Initialize the directory
    
        terraform init

5. Apply the configuration
    
        terraform apply

# Changing infrastructure
1. Change the external port value to 8080
    
        ...
        ports {
                internal = 80
                external = 8080
        }
        ...

2. Apply new configuration
        
        terraform apply

# Destroying infrastracture
Terminate resources managed by Terraform project:
    
    terraform destroy

# Define variables
1. Create new file `variables.txt`
2. Paste the definition of variable

        variable "container_name" {
            description = "Value of the name for the Docker container"
            type        = string
            default     = "ExampleNginxContainer"
        }

3. Replace value with variable in `main.tf`

        ...
        image = docker_image.nginx.image_id
        name  = var.container_name
        ...

4. Override the default variable value by passing the argument
        
        terraform apply -var "container_name=YetAnotherName"

# Quering Data with Outputs
1. Create new file `outputs.tf`
2. Include the outputs information

        output "container_id" {
            description = "ID of the Docker container"
            value       = docker_container.nginx.id
        }

        output "image_id" {
            description = "ID of the Docker image"
            value       = docker_image.nginx.id
        }
3. Query the outputs:

        terraform output

Output: 

    container_id = "57fc104e633bbdbe79f60671da9e6ff5e66764385e38f2ea2b4bf8698a5231e9"
    image_id = "sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99nginx"

# Challenges
The main challenge is to install Terraform due to region restrictions for Russia.