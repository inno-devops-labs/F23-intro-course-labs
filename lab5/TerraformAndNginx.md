1. I try work without VPN, but after several attempts I run VPN to install Terraform. I use next command:
   
   `sudo apt-get update && sudo apt-get install -y gnupg software-properties-common`
   
   ` wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg`

   `gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint`

   `echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list`

   `sudo apt update`

   `sudo apt-get install terraform`

   `terraform -version`

   I get version 1.5.3

2. I worked in docker before, so while I tryed apply terraform, I got conflict between containers, so I removed them and can continuous work.

   `mkdir learn-terraform-docker-container`

   `cd learn-terraform-docker-container`

   `touch main.tf`

   `terraform init`

   `terraform fmt`

   `terraform validate`

   `terraform apply`

   I checked localhost:8000 and saw page "Welcome to nginx"

3. Changed external port from 8000 to 8080, applied changes. Destroied by command `terraform destroy`.
4. Using tutorial, changed main.tf, created variables.tf, applied changes by command `terraform apply -var "container_name=YetAnotherName"`
5. Created outputs.tf, applied changes, get in output container_id and image_id.
