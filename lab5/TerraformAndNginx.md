
# Terraform Installation and Nginx Deployment

1. Start by using **VPN** to prevent some geo restrictions errors.
2. `choco install terraform`
3. `terraform --version`

      ```bash
        Terraform v1.5.7
        on windows_amd64
      ```
4. Install docker desktop.
5. Create a file called `main.tf` and paste the following Terraform configuration into it.
    ```bash
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
6. `terraform init`
7. `terraform apply`
8. Go to [localhost:8000](localhost:8000) to verify the existence of the NGINX container.
9. `docker ps` 
   
   ```bash
    CONTAINER ID   IMAGE          COMMAND                  CREATED         STATUS         PORTS                  NAMES
    d83086b9bf35   61395b4c586d   "/docker-entrypoint.…"   3 minutes ago   Up 3 minutes   0.0.0.0:8000->80/tcp   tutorial
   ```


10. Add `output.tf` an `variables.tf` to the woking directory with the following contents: 
    ```bash
    variable "container_name" {
      description = "Value of the name for the Docker container"
      type        = string
      default     = "ExampleNginxContainer"
    }
    ```
    ```bash
    output "container_id" {
      description = "ID of the Docker container"
      value       = docker_container.nginx.id
    }

    output "image_id" {
      description = "ID of the Docker image"
      value       = docker_image.nginx.id
    }
    ```
11. `terraform apply`
    ```bash
    docker_image.nginx: Creating...
    docker_image.nginx: Still creating... [10s elapsed]
    docker_image.nginx: Creation complete after 16m56s [id=sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99nginx:latest]
    docker_container.nginx: Creating...
    docker_container.nginx: Creation complete after 1s [id=15f9ded9725fec723b553fe037e30656a014c05519be711bd5bac9b793b6f095]

    Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
    ```

12.  `terraform output`

      ```bash
      Outputs:
          container_id = "15f9ded9725fec723b553fe037e30656a014c05519be711bd5bac9b793b6f095"
          image_id = "sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99nginx:latest"
      ```
13.  `terraform destroy`
