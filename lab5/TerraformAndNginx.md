# Task 2


**Installation:**

1. I installed Chocolatey package management for Windows through PowerShell ([Tutorial](https://chocolatey.org/install#individual))
2. By using Chocolatey I installed Terraform package by running the command `choco install terraform`.

My installed version is:

```
> terraform -v
Terraform v1.5.7
on windows_amd64
```

**Building:**

3. I created `main.tf` file with configuration.
4. I initialized a configuration directory with `terraform init` command.
5. After that I applied the configuration with `terraform apply` command and infrastructure was created (NGINX server container is working).

**Changing:**

6. I changed the `ports.external` value of `8000` with `8080`.
7. After this change in configuration we need to run the command `terraform apply` for applying this change. 
8. Now we can see that the container is running on the `localhost:8080`. 

**Destroying:**

9. To terminate resources of this project I ran command `terraform destroy`.

**Variables:**

10. For making the configurations more flexible I created a variable `container_name` in the file `variables.tf`.
11. After that I added a change in a `main.tf` file to `docker_container` resource block: instead of "tutorial" in a 
`name` field I wrote "var.container_name" to use a new variable.
12. To apple configuration I ran `terraform apply`.
13. To change the container name I used `terraform apply -var "container_name=new_name".

**Outputs:**

14. For easily querying of the data I created outputs for container's ID and the image ID with the configuration in the `outputs.tf` file.
15. Then we again apply this changes with `terraform apply` command and we can query the outputs with the `terraform output` command.


**Observations:** Without vpn the terraform package couldn't be downloaded from HashiCorp website.