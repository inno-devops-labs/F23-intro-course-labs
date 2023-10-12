

# Terraform and Nginx Deployment Instructions

## Preliminary Steps

### 1. VPN Connection
- VPN should be connected (Downloading did not work without it).

### 2. Dependency Installation
- First we update our system and install the necessary dependencies using the commands below:
    ```bash
    sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
    ```

### 3. GPG Key Configuration
- We Download the GPG key for Terraform and add it to the system's keyring with the following commands:
    ```bash
    wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
    ```

  Veryifiy Downlaoding with:
  ```
	  gpg --no-default-keyring \
	--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
	--fingerprint
	/usr/share/keyrings/hashicorp-archive-keyring.gpg
	-------------------------------------------------
	pub   rsa4096 2023-01-10 [SC] [expires: 2028-01-09]
 	     798A EC65 4E5C 1542 8C8E  42EE AA16 FCBC A621 E701
	uid           [ unknown] HashiCorp Security (HashiCorp Package Signing) <security+packaging@hashicorp.com>
	sub   rsa4096 2023-01-10 [S] [expires: 2028-01-09]
  ```

### 4. Terraform Installation
- We Updated the package list and install Terraform:
    ```bash
    sudo apt update
    sudo apt-get install terraform
    ```

### 5. Version Verification
- Confirm the Terraform installation by checking its version:
    ```bash
    terraform -version
    ```
    Output: ``` Terraform v1.6.1
	on linux_amd64 ```

## Nginx Deployment Using Terraform

### 1. Configuration File Creation
- Create a `main.tf` :
    ```hcl
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

### 2. Configuration Verification
- Validate the Terraform configuration:
    ```bash
    terraform validate
    Output: Success! The configuration is valid.
    ```

### 3. Initialization and Application
- Initialize Terraform and apply the configuration:
    ```bash
    terraform init (root required)
    Output:
		Initializing the backend...

		Initializing provider plugins...
		- Reusing previous version of kreuzwerker/docker from the dependency lock file
		- Using previously-installed kreuzwerker/docker v3.0.2

		Terraform has been successfully initialized!

		You may now begin working with Terraform. Try running "terraform plan" to see
		any changes that are required for your infrastructure. All Terraform commands
		should now work.

		If you ever set or change modules or backend configuration for Terraform,
		rerun this command to reinitialize your working directory. If you forget, other
		commands will detect it and remind you to do so if necessary.

    terraform apply (root required)

	Output:
		docker_container.nginx: Creating...
		docker_container.nginx: Creation complete after 3s 
		[id=33f8e4232323a7d7c4e4d5add61c3eacd2d6821a540d84ec3aff8d37b4977c64]

		Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
    ```

### 4. Nginx Verification
- We can then Visit `localhost:8000` in the web browser to confirm the Nginx server is operational.

### 5. Docker Container Inspection
- we then Execute the command below to view the running Docker container:
    ```bash
    sudo docker ps
    Output:
	CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                  NAMES
	33f8e4232323   bc649bab30d1   "/docker-entrypoint.…"   50 seconds ago   Up 47 seconds   0.0.0.0:8000->80/tcp   ExampleNginxContainer
    ```

## Advanced Terraform Features

### 1. Port Modification
- We can easily Alter the external port to 8080 in `main.tf`, then re-apply the configuration:
    ```bash
    sudo terraform apply
    Output:
	    docker_container.nginx: Destroying... 
	    [id=33f8e4232323a7d7c4e4d5add61c3eacd2d6821a540d84ec3aff8d37b4977c64]
		docker_container.nginx: Destruction complete after 2s
		docker_container.nginx: Creating...
		docker_container.nginx: Creation complete after 3s 	
		[id=ac67bda637767395a46f82666c3d53f3dd5de12af620d280601bf3c535a1846e]

		Apply complete! Resources: 1 added, 0 changed, 1 destroyed.

	docker ps
	output:
	CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                  NAMES
	ac67bda63776   bc649bab30d1   "/docker-entrypoint.…"   58 seconds ago   Up 54 seconds   0.0.0.0:8080->80/tcp   ExampleNginxContainer
    ```

We should be apply now to check that it is working via port 8080 rather than 80.

### 2. Variable Implementation
- Generate a `variables.tf` file, and adjust `main.tf` to utilize a variable for the container name:
    ```hcl
    # variables.tf
	    variable "container_name" {
	  description = "Value of the name for the Docker container"
	  type        = string
	  default     = "ExampleNginxContainer"
	}

    # main.tf
    resource "docker_container" "nginx" {
      ...
      name  = var.container_name
      ...
    }
    ```

### 3. Output Definitions
- Then Create an `outputs.tf` file to designate output values for the Docker container and image IDs:
    ```hcl
    output "container_id" {
      description = "ID of the Docker container"
      value       = docker_container.nginx.id
    }

    output "image_id" {
      description = "ID of the Docker image"
      value       = docker_image.nginx.id
    }
    ```

### 4. Apply and Verify Changes
- Apply the modifications and confirm the variable feature is functioning correctly:
    ```bash
    sudo terraform apply
    sudo docker ps
	Output (for both):
		container_id = "9b035afe75f6648f9edd91cb45b8b016e15df48a5c96e9f91b22d08fd60e9a0" 
		image_id = "sha256:78496b5c684db4b8b3b7ea914ea9a669e884dfdd9f769ff4c2b0f4671bafaa0nginx:latest"

	CONTAINER ID     IMAGE        COMMAND                  CREATED               STATUS               PORTS                   	NAMES
	9b035afe75f7     78496b5c684e "/docker-entrypoint.…"   About a minute ago    Up About a minute    	0.0.0.0:8080->80/tcp    NewNginxContainer


## Infrastructure Removal

- To dismantle the deployed infrastructure, execute the command below:
    ```bash
    sudo terraform destroy
    ```
