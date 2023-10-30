# Terraform Installation and Nginx
1. Install Terraform for linux from following the tutorial 
2. I have Terraform 
    ```
    terraform --version
    Terraform v1.6.2
    on linux_amd64
    ```
3. I already had docker desktop so I did not need to install it.
4. create ```main.tf``` with the following content: 
    ```console
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
5. Initialize the project ```terraform init```

6. Apply ```terraform apply```

7. Once I run the docker container I got the following output
    ```Ruby
    ahmad@ahmad-workstation:~/Git/learn-terraform-docker-container$ docker ps 
    CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                  NAMES
    51bbf0cf2a02   593aee2afb64   "/docker-entrypoint.…"   18 seconds ago   Up 17 seconds   0.0.0.0:8000->80/tcp   tutorial
    ```

8. after output and variables files 
    ```Ruby 
    Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

    Outputs:

    container_id = "51bbf0cf2a02a74bfa9b1c806e231ef4337362240ebf46d53e99014afb8a529a"
    image_id = "sha256:593aee2afb642798b83a85306d2625fd7f089c0a1242c7e75a237846d80aa2a0nginx"
    ```