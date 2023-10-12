# Terraform Installation and Nginx Deployment

## Terraform Installation

### Using Chocolatey on Windows:

1. **Installation of Chocolatey**:
   Installed Chocolatey package management for Windows through PowerShell. You can find the installation guide [here](https://chocolatey.org/install#individual).
   
2. **Installing Terraform using Chocolatey**:
   Used Chocolatey to install Terraform by running the command: 
   ```bash
   choco install terraform
   ```

3. **Verifying Terraform Installation**:
   ```bash
   terraform -v
   ```
   The installed version was `Terraform v1.6.0 on windows_amd64`.

## Nginx Deployment using Terraform

1. **Directory Setup**:
   Created a directory for the Terraform configuration named `terraform-nginx` and navigated into this directory.
   ```bash
   mkdir terraform-nginx
   cd terraform-nginx
   ```

2. **Terraform Configuration**:
   Created a `main.tf` file and added the necessary configuration for deploying the Nginx container.

3. **Initialization and Application**:
   - Initialized the Terraform configuration directory using:
     ```bash
     terraform init
     ```
   - Applied the Terraform configuration to create the infrastructure:
     ```bash
     terraform apply
     ```

4. **Accessing Nginx**:
   The Nginx container should be accessible via the browser at `http://localhost:8080`.

5. **Modifications**:
   I made a change in the main.tf file to modify the external port mapping from 8080 to 8000. After making the changes, I ran terraform apply again to apply the modifications. Now, the Nginx container is accessible at `http://localhost:8000`.

6. **Destroying the Infrastructure**:
   To clean up, I run:
   ```bash
   terraform destroy
   ```

## Observations
- It's important to note that geographical restrictions might prevent downloading the Terraform package directly from the HashiCorp website. Using a VPN can circumvent this issue.
- The Terraform configuration provides a clear plan of actions before any changes are applied, ensuring that the user is aware of the modifications.