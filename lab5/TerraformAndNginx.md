# Terraform playground

## Terraform Installation

I was pleasantly surprised to have chocolatey already installed on my machine. It significantly trivialized the task of installing Terraform. I used the following command:

```sh
choco install terraform
```

And the version of the terraform I got is:

```
terraform -version

Terraform v1.5.7
on windows_amd64
```

The main challange with Terraform appeared after I installed it and tried to proceed with the tutorial. My Docker environment was corrupted, so I had to reinstall my Docker Desktop. The rest of the task was simply following orders from the Terraform site. I also used VPN in advance to have no troubles with downloading anything related to Terraform.

After that, I used command:

```sh
terraform init
```

I used it in my working directory to install terraform in it. Then, I copypasted the file **main.tf**, which contains nginx configuration with docker. The command I used to apply the infrastructure is 

```sh
terraform apply
```

Then, I also made **outputs.tf** and **variables.tf** to follow the guide on the variables and outputs for the terraform. To apply changes, I once again used the apply command from above. After I finished playing with terraform, I used the command to destroy environment:

```sh
terraform destroy
```

