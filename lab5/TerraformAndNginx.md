# Terraform (Amirlan Sharipov)

1. Installed terraform using pacman
2. created a directory and pasted the example config (main.tf)
3. activated vpn, because terraform devs block Russian IPs
4. terraform init to initialize the directory, which creates a lock file to save the versions
5. terraform fmt and validate
6. terraform apply to apply the configuration
7. changed the port to 8080 and terraform apply to apply changes
8. terraform destroy to destroy the infrastructure
9. created variables.tf file for storing variables
10. apply and apply again with terraform apply -var "container_name=YetAnotherName"
11. created outputs.tf file
12. now terraform apply prints the output and terraform output prints only the outputs
