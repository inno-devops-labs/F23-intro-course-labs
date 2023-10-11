# MacOS steps (M1)
#### Successfully loaded Terraform 1.6.1
## Completed according to oficial series of guides on https://developer.hashicorp.com/terraform/tutorials/docker-get-started

  ### Installation via brew:
  > brew tap hashicorp/tap  
  > brew install hashicorp/tap/terraform
  * Struggled a bit trying to run terraform from terminal, relinking helped
  > brew link --overwrite terraform  
  ###  Build infrastructure upon Docker 
  * created _main.tf_ config file
  * run
  > terraform init
  ### Changed infrastructure
  * changed port from 8000 to 8080
  * run
  > terraform apply
  ### Destroyed infrastructure
  * run
  > terraform destroy
  ### Defined vaiables of container name 
  * added file _variables.tf_
  * changed _main.tf_ in one line to correspond to new variable name.
  * run
  > terraform apply
  ### Configured outputs 
  * created _outputs.tf_
  * run
  > terraform apply
  > terraform output
