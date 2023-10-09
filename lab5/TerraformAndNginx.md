## Task 2: Terraform Installation and Nginx Deployment

### Install Terraform
0. use vpn
1. install dependencies, download and add the gpg key to the keyrings [from the terraform website](https://developer.hashicorp.com/terraform/tutorials/docker-get-started)
```shell
    sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
    wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
    gpg --no-default-keyring \
    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    --fingerprint
```
2. Apt updata and Apt install Terraform
```shell
    sudo apt update
    sudo apt-get install terraform
```
3. Check verision of terraform
```shell
    terraform -version
```
> Terraform v1.6.0 on linux_amd64

4. create main.tf file with following content
```s
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx"
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
5. Verify if the configuration files are in proper formatting
```shell
    terraform fmt
    terraform validate
```
> Success! The configuration is valid.

6. Now, initialize and apply
```shell
    sudo terraform init
    sudo terraform apply
```

7. Check the [localhost:8000](localhost:8000) you can find that the nginx server has begun

8. Run following to check if the docker container is up and running
```shell
    sudo docker ps
```
> CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                  NAMES
92afdfd51d28   61395b4c586d   "/docker-entrypoint.…"   11 seconds ago   Up 10 seconds   0.0.0.0:8000->80/tcp   tutorial


9. Explore more features, Check the states and state lists as follows:
```shell
    sudo terraform show
    sudo terraform state list
```
10. Now to try a change, just replace the external port from 8000 to 8080 in main.tf file and run the following:
```shell
    sudo terraform apply
```
> Apply complete! Resources: 1 added, 0 changed, 1 destroyed.

11. Now you should be able to check [localhost:8080](localhost:8080)

12. Lets try variables feature now, just add the following config into variables.tf
```s
    variable "container_name" {
    description = "Value of the name for the Docker container"
    type        = string
    default     = "ExampleNginxContainer"
    }
```

13. Also we need to update our main.tf file to account for the variable,
just replace the name = "tutorial" to the following in the containers section in main.tf file
```s
    name  = var.container_name
```

14. Also paralley lets try the output feature aswell, add the following config to outputs.tf file
```s
output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.nginx.id
}

output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.nginx.id
}

```

15. Now apply the changes for variables and outputs and test
```shell
    sudo terraform apply
```
> Apply complete! Resources: 1 added, 0 changed, 1 destroyed.

> Outputs:

>  container_id = "8a038eae73e6623f8eedd0ca44b9b015e13cf37a5b85f95e8f90a21d06ed57e9"
>  image_id = "sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99nginx:latest"

16. Also check the docker container name to verify if the variable feature is working
```sh
    sudo docker ps
```
> CONTAINER ID   IMAGE          COMMAND                  CREATED              STATUS              PORTS                  NAMES
8a038eae73e6   61395b4c586d   "/docker-entrypoint.…"   About a minute ago   Up About a minute   0.0.0.0:8080->80/tcp   ExampleNginxContainer

17. Finally we can destroy the infrastrucnture using following command
```sh
    sudo terraform destroy
```
> Destroy complete! Resources: 2 destroyed.