
# Terraform Installation and Nginx Deployment

1. Install terraform on windows using chocolatey.
2. Run the following command in powersell:
    
    **input:**
    ```
    choco install terraform
    ```

3. check terraform version:

    **input:**
    ``` 
    terraform --version 
    ```
    
    **output:**    
      ```bash
        Terraform v1.5.7
        on windows_amd64
      ```
4. Install docker desktop form the offical website.
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
6. Run the following coomand on powershell:

    **input:**
    ```
    terraform init
    ```
    **output:**
    ```bash
    Initializing the backend...

    Initializing provider plugins...
    - Finding kreuzwerker/docker versions matching "~> 3.0.1"...
    - Installing kreuzwerker/docker v3.0.2...
    - Installed kreuzwerker/docker v3.0.2 (self-signed, key ID BD080C4571C6104C)

    Partner and community providers are signed by their developers.
    If you'd like to know more about provider signing, you can read about it here:
    https://www.terraform.io/docs/cli/plugins/signing.html

    Terraform has created a lock file .terraform.lock.hcl to record the provider
    selections it made above. Include this file in your version control repository
    so that Terraform can guarantee to make the same selections by default when
    you run "terraform init" in the future.

    Terraform has been successfully initialized!

    You may now begin working with Terraform. Try running "terraform plan" to see
    any changes that are required for your infrastructure. All Terraform commands
    should now work.

    If you ever set or change modules or backend configuration for Terraform,
    rerun this command to reinitialize your working directory. If you forget, other
    commands will detect it and remind you to do so if necessary.
    ```
7. Apply changes:

    **input:**
    
    ```
    terraform apply
    ```

    **output:**
    ```bash
    docker_image.nginx: Still creating... [10m10s elapsed]
    docker_image.nginx: Creation complete after 10m18s [id=sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99nginx]
    docker_container.nginx: Creating...
    docker_container.nginx: Creation complete after 1s [id=bd8910ec6d9532589ea96d3ac02a7bcd8b17ba7f431c61a7f57d8a59451f19a2]
    Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
    ```

8. Go to [localhost:8000](localhost:8000) to verify the existence of the NGINX container.
![Alt text](<good_name.png>)
9. Run the following command:

    **input:**
    ```
    docker ps
    ``` 
   **output:**
   ```bash
    CONTAINER ID   IMAGE          COMMAND                  CREATED         STATUS         PORTS                  NAMES
    bd8910ec6d95   61395b4c586d   "/docker-entrypoint.…"   6 minutes ago   Up 6 minutes   0.0.0.0:8000->80/tcp   tutorial
   ```


10. Add `variables.tf` and  `output.tf` to the woking directory with the following contents: 
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
11. Apply changes:
    **input:**
    ```
    terraform apply
    ```
    **output:**
    ```bash
    docker_image.nginx: Creation complete after 10m10s [id=sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99nginx]
    docker_container.nginx: Creating...
    docker_container.nginx: Creation complete after 1s [id=3cd16729fd70dac0f5e6241c1b7465ce666e56904d0a2233c8e2b957e88c0c8d]

    Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

    Outputs:

    container_id = "3cd16729fd70dac0f5e6241c1b7465ce666e56904d0a2233c8e2b957e88c0c8d"
    image_id = "sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99nginx"
    ```

12. Run the following command: 
    
    **input:**
    ```
    terraform output
    ```
    **output:**

    ```bash
      Outputs:
        container_id = "3cd16729fd70dac0f5e6241c1b7465ce666e56904d0a2233c8e2b957e88c0c8d"
        image_id = "sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99nginx"
      ```
13. Destroy the infrastructure:

    **input:**   
    ```
    terraform destroy
    ```
    **output:**

    ``` bash
        docker_container.nginx: Destroying... [id=3cd16729fd70dac0f5e6241c1b7465ce666e56904d0a2233c8e2b957e88c0c8d]
        docker_container.nginx: Destruction complete after 0s
        docker_image.nginx: Destroying... [id=sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99nginx]
        docker_image.nginx: Destruction complete after 0s

        Destroy complete! Resources: 2 destroyed. 
    ```