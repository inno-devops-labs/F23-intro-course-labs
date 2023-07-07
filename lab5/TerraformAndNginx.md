# Terraform and Nginx

I downdloaded Terraform installer from this [link](https://www.terraform.io/downloads.html) and unzipped the file. Then, added the Terraform executable path to your PATH environment variable. After that, I checked that terraform is installed using cmd and typing into it for example terraform -version.
Output in my case: ![alt text](https://i.ibb.co/tC8DN5K/terraformversion.jpg).
Next you need to make sure that you have Docker (and WSL2 in case you are using Windows like me) installed.
Then I created directory learn-terraform-docker-container and main.tf in it.
After that I wrote command "terraform init", however this command does not work in Russia, so I had to use VPN to bypass that. Output: ![alt text](https://i.ibb.co/8YnKfcf/terraforminit.jpg)
Then I formatted using "terraform fmt" and validated using "terraform validate".
To save changes, I wrote "terraform apply" and the confirmed changes by typing yes.
Then I saved state to the file that I also attached terraform.tfstate with "terraform show > test.txt" command.
To list states, "terraform state list" can be used.
To learn how to change infrastructure, I changed nginx localhost port from 8000 to 8080 and saved changes using once again **"terraform apply"**.
To destroy terraform infrastructure, I used **"terraform destroy"** command.
To define variables, I first create variables.tf file and then added variables to it, also changing line name = "tutorial" to name = var.container_name. Then I used "terraform apply" command to save changes.
To override the default container name, I used **"terraform apply -var="container_name=nginx-container""** command.
To query data with outputs, I first created outputs.tf file and then added output to it. Then I used "terraform apply" command to save changes. Then is used **"terraform output"** command to see the output.
All used files are in terraform_files folder.
