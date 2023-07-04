1. The command used for terraform version number: `terraform -v`

Output: 
`Terraform v1.5.2 on darwin_amd64 + provider registry.terraform.io/kreuzwerker/docker v3.0.2`

2. To install Terraform, I first set up VPN on my laptop (because of the restrictions for Russian Federation). Then, I downloaded the pre-compiled binary for Mac OS for AMD64 architecture (terraform_1.5.2_darwin_amd64.zip) from the official website https://developer.hashicorp.com/terraform/downloads.
Then, I moved the unzipped binary to /usr/local/bin/ with command `mv ~/Downloads/terraform /usr/local/bin/`. Then I checked that the binary works with command `terraform -help`.

3. First, I used the configuration from the Terraform tutorial. I used command `terraform init` to initialise the project, `terraform apply` to provision NGINX server container. As expected, after executing the commands, NGINX welcome page was displayed at http://localhost:8000/
I used `terraform destroy` to destroy the container. Also, I tried to modify the files and used `terraform fmt` and `terraform validate` to check files modifications and validate the configurations syntactically. 
Also, I used `terraform show` command to inspect the current state and `terraform show list` to show the list of resources in current state. 
Also, I used command `terraform apply -var "container_name=YetAnotherName"` to override default variable value (of container name). And `terraform output` to display the outputs according to configuration for them.

4. Observations: Terraform is not available for Russian Federation (unless you use VPN). I really liked how Terraform writes the plan on changes (what is destroyed, what is added) after changes to configurations, it is really convenient to prevent accidental mistakes. Terraform generates state files, which is also useful for observing the changes (and their backup).
