# Task 2: Terraform Installation and Nginx Deployment


## Terraform Version

Version: `v1.6.0`

## Installation Steps

1. Ran following commands on my linux PC from [Official website](https://developer.hashicorp.com/terraform/tutorials/docker-get-started/install-cli).

```bash

sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

wget -O- https://apt.releases.hashicorp.com/gpg | \

gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update

sudo apt-get install terraform
```

2. Verified the installation by executing the command `terraform -help`.

## Commands Executed

1. **Initialization**:
    ```bash
    terraform init
    ```
    This command initializes the working directory and installs the required providers.

2. **Apply Configuration**:
    ```bash
    terraform apply
    ```
    This command creates or updates the infrastructure to match the desired state defined in the Terraform configuration files.

## Observations & Challenges

- No challenge was faced while installing and setting up terraform. It was a pretty smooth process.


## 3 (a): Build Infrastructure

### Steps:

1. Created a `main.tf` file with the desired infrastructure configuration.
2. Initialized the directory with `terraform init`.
3. Applied the configuration using `terraform apply`.

### Observations:

- **Observation**: The initial setup was straightforward, and Terraform provided a clear plan of the resources that would be created. 

## Change Infrastructure

### Steps:

1. Modified the `main.tf` file to update the ngnix port mapping.
2. Applied the changes with `terraform apply`.

### Observations:

- **Observation**: Terraform efficiently detected changes in the configuration and only updated the port number as mentioned.

## Destroy Infrastructure

### Steps:

- Used the command `terraform destroy` to remove all resources created by Terraform.
   

## Define Variables

### Steps:

1. Created variable called `external_port` using `variable` keyword inside the `.tf` file for updating ngnix port.
2. Provided value for the variable via command line using: `terraform apply -var "external_port=9000"`.

### Observations:

- **Observation**: Using variables made the configuration more dynamic and reusable.

## Query Data with Outputs

### Steps:

1. Defined output values via keyword `output` in order to retrieve ngnix container id.
2. After running `terraform apply`, used `terraform output nginx_container_id` to retrieve the ngnix container ID.

### Observations:

- **Observation**: Outputs provide a useful way to extract key information from the Terraform-managed resources, such as the container ID in our case

---
