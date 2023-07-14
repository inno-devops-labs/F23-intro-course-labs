# Task 2: Terraform Installation and Nginx Deployment
---

### Terraform Version Number
I have installed Terraform v1.5.3

### Terraform Installation Steps
- Visit the Terraform website and download the package for linux
- Extract the downloaded package
- Move the extracted binary to the system's PATH environment variable.

### Steps to deploy an Nginx container with Terraform

- Create a new directory for a configuration files; go the directory

- Inside the directory, create a new file named main.tf with the following code:

`provider "docker" {`
  `host = "unix:///var/run/docker.sock"
}`
`resource "docker_container" "nginx" {`
  `name  = "nginx"`
  `image = "nginx:latest"`
  `ports {`
    `internal = 80`
    `external = 8080`
  `}`
`}`

3. Open a terminal, navigate to the directory containing the main.tf file, and run the command terraform init to initialize the Terraform configuration.

4. Run the command `terraform apply` to apply the Terraform configuration and deploy the Nginx container.

5. After the deployment is complete, you can access the Nginx container by opening `http://localhost:8080` in a web browser.