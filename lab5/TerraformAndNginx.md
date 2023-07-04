## Task 2: Terraform Installation and Nginx Deployment

I installed Terraform v1.5.2 on darwin_arm64.
I installed terraform using Homebrew:
`brew tap hashicorp/tap`
`brew install hashicorp/tap/terraform`

Then I created main.tf file with configuration. To run infrastructure I used `terraform init` and `terraform apply`, then I checked that my nginx server is working inside docker container. To destroy it, I used `terraform destroy`.

To change the instrastructure I updated main.tf file and runned `terraform apply` to apply changes.

To have more reusable code I added input variables in the new file variables.tf.

Then I created output variables in outputs.tf to have output variables that can be used to connect terraform project with other infrastructures or with other terraform projects.