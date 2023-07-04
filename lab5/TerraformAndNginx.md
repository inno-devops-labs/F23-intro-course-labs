# Terraform Installation and Nginx Deployment

## Terraform Overview
Terraform is an open-source infrastructure as code (IaC) tool developed by HashiCorp. It enables you to define and manage infrastructure resources declaratively using a high-level configuration language. With Terraform, you can provision, configure, and manage infrastructure components across various cloud providers and on-premises environments.

## Installing Terraform

To install Terraform, follow these steps:

- Visit the official website to download Terraform: https://developer.hashicorp.com/terraform/downloads

- Download the appropriate Terraform package for your operating system. Terraform supports Windows, macOS, and Linux.

- Extract the downloaded package to a directory of your choice.

- Add the directory containing the Terraform executable to your system's PATH environment variable. This allows you to run Terraform commands from any location in the terminal or command prompt.

- Verify the installation by opening a new terminal or command prompt window and executing the following command:

```
terraform version
// v1.5.2
```

## Deploying Nginx Container with Terraform
To deploy an Nginx container using Terraform, you can follow the steps outlined in the official Terraform tutorial: [Get Started - Docker](https://developer.hashicorp.com/terraform/tutorials/docker-get-started).

- Create a new directory for your Terraform project.

- Inside the project directory, create a new file named main.tf and copy the following Terraform configuration code into it:

```
# Define the provider block for Docker
provider "docker" {}

# Define the resource block for the Nginx container
resource "docker_container" "nginx" {
  image = "nginx:latest"
  name  = "nginx_container"
  ports {
    internal = 80
    external = 8000
  }
}
```

Note: This configuration uses the Docker provider to define a Docker container resource for Nginx. It specifies the image, container name, and port mapping.

- Open a terminal or command prompt window, navigate to the project directory, and execute the following command to initialize the Terraform working directory:

```
terraform init
```

Note: This command downloads the necessary provider plugins and sets up the project.

- Execute the following command to preview the changes that Terraform will make:

```
terraform plan
```

Note: This command shows a summary of the resources that will be created or modified.

- Finally, apply the configuration by executing the following command:

```
terraform apply
```

Now, Terraform will create the Nginx container based on the specified configuration. It will also output the container ID and other relevant information.

- To verify the deployment, you can access the Nginx in a web browser using the URL http://localhost:8000. If everything is successful, you should see the default Nginx landing page.

- Also, to clean up and destroy the created resources, execute the following command:

```
terraform destroy
```

## Observations and Challenges
During the installation and deployment process, you may encounter the following observations and challenges:

- Ensure that you have the appropriate permissions and access rights to perform the installation and deployment steps.
- Make sure to download the correct Terraform package for your operating system.
- It is recommended to use a separate directory for each Terraform project to keep the configurations organized.
- Understand the Terraform configuration language and the resource/provider syntax
