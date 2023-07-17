# Student Information
Name: Md Motasim Bhuiyan

Email: m.bhuiyan@innopolis.university

Group: BS21-CS-01

# Terraform and Nginx
## Terraform Installation
I am using Windows for this lab. So I used chocolatey to install Terraform
```
choco install terraform
```
After installation, I checked the version of Terraform
```
terraform -version
>>> Terraform v1.5.3
```

## Nginx Deployment
Created a folder named `terraform-lab` and created a file named `main.tf` inside it.

The content of `main.tf` is
```
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  host    = "npipe:////.//pipe//docker_engine"
}

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
```
This configuration is for Windows. 

To run this configuration, I ran the following commands
```
terraform init
terraform apply
```
When prompted, I entered `yes` to confirm the deployment.

After the deployment, going to `http://localhost:8000` showed the Nginx welcome page.

## Changing Infrastructure
Here, I changed the port number from `8000` to `5000`. To do that, I changed the `ports` section of `main.tf` to
```
ports {
    internal = 80
    external = 5000
}
```
Then I ran the following commands
```
terraform apply
```
When prompted, I entered `yes` to confirm the deployment.

After the deployment, going to `http://localhost:5000` showed the Nginx welcome page. And going to `http://localhost:8000` showed that the page is not available.

## Defining Variables
Here, I defined a variable named `port` and used it in the `ports` section of `main.tf`. I also added a file named `variables.tf` where I defined the variable `port`.
```
variable "port" {
  description = "The port to run docker container"
  type        = number
  default     = 8000
}
```
Then I changed the `ports` section of `main.tf` to
```
ports {
    internal = 80
    external = var.port
}
```
Then I ran the following commands
```
terraform apply -var="port=8080"
```
When prompted, I entered `yes` to confirm the deployment. Going to `http://localhost:8080` showed the Nginx welcome page.

## Querying Data with Outputs
To query the data, I created a file named `outputs.tf` and added the following code
```
output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.nginx.id
}

output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.nginx.id
}

output "port" {
  description = "The port used to access the container"
  value       = docker_container.nginx.ports[0].external
}
```
Then I applied the configuration. To see the outputs, I ran the following command
```
terraform output
```
## Destroying Infrastructure
To destroy the infrastructure, I ran the following command
```
terraform destroy
```
When prompted, I entered `yes` to confirm the destruction.

Going to `http://localhost:8080` or listing the containers using `docker ps` showed that the container is not available anymore.

## Difficulties
There was no difficulty because the documentation was pretty normal. I had to find out some stuff like data type for the port number in variables section. But overall, the tasks were pretty simple.