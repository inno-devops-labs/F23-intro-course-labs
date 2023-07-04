## Terraform installation

### Terraform v1.5.2 on windows_amd64

1. Choose the installation package https://developer.hashicorp.com/terraform/downloads

2. Download and extract the package in C://terraform.

3. Add environment variable (System properties/Advanced, select Path, click Edit, click New, write path, save).
```shell
C:\terraform
```

4. Ensure that terraform is installed correctly by running the command in Powershell.
```shell
terraform -help
```

5. Create a directory named learn-terraform-docker-container.
```shell
mkdir learn-terraform-docker-container
```

6. Navigate into the working directory.
```shell
cd learn-terraform-docker-container
```

7. In the working directory, create a file called main.tf and paste the Terraform configuration into it.

8. Initialize the project, which downloads a plugin called a provider that lets Terraform interact with Docker
```shell
terraform init
```

9. Implement the Terraform configuration and deploy the infrastructure.
```shell
terraform apply
```

10. Please carefully examine the modifications that Terraform intends to make, and when prompted, confirm the deployment by entering yes.

11. Stop the container.
```shell
terraform destroy
```

## Observations

* When trying to download installation package I have got message:
This content is not currently available in your region

