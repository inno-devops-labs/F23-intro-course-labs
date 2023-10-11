## Task 2 - Terraform installation
Currently, the service is unavailable in Russia. Thus, I managed to install the terraform itself and complete the rest steps via tutorial enviroment provided by developers.
1. Terraform version: I managed to install Terraform v1.6.1 linux_amd64
2. Steps on terraform installation
   -- Download the terraform binary and copy it into binary folder `/usr/local/bin/`
   -- Verification of installation by `terraform --version`
3. Applied commands on terraform:
   -- `terraform init` - create a terraform configuration via main.tf configuration file
   -- `terraform apply` - create a specifyed docker was set-up. In our case it was nginx server. By `docker ps` I was able to verify that the docker was running
   -- Terraform change - I changed the out port for a docker in `main.tf` file and applied the changes by`terraform apply` command. Then I veryfied that the docker indeed stated on the other port.
   -- `terraform destroy` - destroy the specidied instances. In our case it was the nginx docke. Via `docker ps` command I verified that the docker indeed was destroyed.

4. Overall this utility allowed to manipulate the solution deployment via configuration files which provides more robust way to deploy and change the solutions in place. 
