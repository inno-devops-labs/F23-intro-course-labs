## Terraform Installation and Deployment Process

### Terraform Version
- Terraform version: 1.6.0

### Installation Steps for Ubuntu 22.04
1. Open a terminal on your Ubuntu 22.04 system.
2. Run the following commands to download the gpg file:
   ```
   wget -O- https://apt.releases.hashicorp.com/gpg
   gpg --dearmor
   sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
   ```
3. Install terraform using the following command:
   ```
   sudo apt-get install terraform
   ```
3. Verify the installation by running the following command:
   ```
   terraform -v
   ```

### Tutorial Steps
1. Building Infrastructure:
   - Create `main.tf` file with configuration
   - Initialize configuration folder with `terraform init`
   - Apply configuration with `terraform apply`

2. Changing Infrastructure:
   - Change `ports.external` from 8000 to 8080
   - Apply configuration with `terraform apply`

3. Destroying Infrastructure:
   - Simply run `terraform destroy`

4. Defining Variables:
   - Open `variables.tf` file and fill it with container name
   - Change it with command `terraform apply -var "container_name=new_name"`
   - Check it with `docker ps`

5. Querying Data with Outputs:
   - Create `output.tf` file and fill it with ids
   - Apply changes with `terraform apply`
   - Query the outputs with the `terraform output`

### Observations and Challenges
- During the installation process on Ubuntu 22.04, I encountered problem with access to the https://apt.releases.hashicorp.com/gpg.
- I resolved it by using Tor Browser with custom bridges.
- Overall, the installation and deployment process went smoothly on Ubuntu 22.04 with the help of the provided tutorial.