## Task 2: Terraform Installation and Nginx Deployment

### Terraform Installation

To install Terraform, follow these steps:

1. Visit the official Terraform website at [terraform.io](https://www.terraform.io/).

2. Download the appropriate Terraform package for your operating system (Windows, macOS, or Linux).

3. Extract the downloaded package to a directory of your choice.

4. Add the Terraform executable to your system's PATH environment variable.

5. Verify the installation by opening a terminal or command prompt and running the command terraform version. This will display the installed version of Terraform.

### Nginx Deployment with Terraform

To deploy an Nginx container using Terraform, follow these steps:

1. Create a new directory for your Terraform configuration files.

2. Inside the directory, create a new file named main.tf and add the following code:

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_container" "nginx" {
  name  = "nginx"
  image = "nginx:latest"
  ports {
    internal = 80
    external = 8080
  }
}

3. Open a terminal or command prompt, navigate to the directory containing the main.tf file, and run the command terraform init to initialize the Terraform configuration.

4. Run the command terraform apply to apply the Terraform configuration and deploy the Nginx container.

5. After the deployment is complete, you can access the Nginx container by opening a web browser and navigating to http://localhost:8080.