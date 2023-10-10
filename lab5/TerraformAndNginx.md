Terraform version: 1.6.0 (we can see it in *terraform.tfstate* file)
System: Ubuntu 20.04

Difficulties and complaints: Terraform is not available in Russia. Therefore, a VPN is required to install it. And since there is no free VPN on Ubuntu, this task depends on buying a VPN yourself or looking for the person who bought it. In my opinion, the teacher should have provided VPN access to students before assigning this assignment.

First, I will provide a description of the main Terraform commands. After which it will be convenient to describe the steps of the tutorial. At the beginning of each paragraph there will be a link to the logs from the linux terminal.

### Basic commands:

<b>1. init:</b> This command initializes Terraform in the working directory. It loads all the necessary providers and modules specified in the Terraform configuration files.

<b>2. plan:</b> The plan command looks at the Terraform execution plan. It parses the current configuration and outputs a list of changes that will be applied when the apply command is executed. The plan contains information about the creation, modification, or deletion of resources.

<b>3. apply:</b> The apply command applies the changes described in the execution plan to the infrastructure. It creates, modifies, or deletes resources according to a given configuration. The apply command will ask for confirmation before applying the changes.

<b>4. destroy:</b> The destroy command destroys all created resources described in the Terraform configuration. It deletes all infrastructure resources that were previously created using Terraform. The destroy command also asks for confirmation before deleting.

<b>5. output:</b> The output command displays the values of the output variables defined in the Terraform configuration. It allows you to obtain information about the current state of the infrastructure, such as IP addresses, resource identifiers and other parameters.

<b>6. state:</b> The state command allows you to manage the state of the Terraform infrastructure. It allows you to view, edit, and delete Terraform state, which contains information about current resources and their relationships.

<b>7. validate:</b> The validate command checks Terraform configuration files for syntax errors and problems with provider settings.


### Tutorial steps:

#### 1. Installation: [Log link](https://drive.google.com/file/d/1yJHSViGyduWMABw6Lt5KR-Di6bVmYnPF/view?usp=sharing)
1. It's necessary to make sure that Docker is installed on the computer

2. Enable VPN

3. Enter all the commands from the tutorial into the terminal [link](https://developer.hashicorp.com/terraform/tutorials/docker-get-started/install-cli)

4. Verify the installation using <b>*terraform -help*</b>

#### 2. Build infrastructure: [Log link](https://drive.google.com/file/d/1XkXIA4eJUYGkSfe5Vwhcgcw5vHetGs2f/view?usp=sharing)
1. Prerequisites: create file *main.tf* with configuration from tutorial

2. Initialize the directory: 
- terraform init

3. Format and validate the configuration:
- terraform fmt

- terraform validate

4. Create infrastructure:

- terraform apply

5. Inspect state:

- terraform show

6. Manually Managing State:

- terraform state list

#### 3. Change infrastructure: [Log link](https://drive.google.com/file/d/1eQv5LFvJ0_8Xpqwto_EkeRJafvyvpr2P/view?usp=sharing)
1. Prerequisites: Initialize and apply the configuration:

- terraform init

- terraform apply

2. Update configuration: Now update the external port number of the container. Change the docker_container.nginx resource under the provider block in main.tf by replacing the ports.external value of 8000 with 8080

3. Apply Changes: 

- terraform apply

#### 4. Destroy infrastructure: [Log link](https://drive.google.com/file/d/1WI3BvUFzYbXtwd3bTgBbInoA3ZoBJCpY/view?usp=sharing)
1. Destroy: 

- terraform destroy

#### 5. Define variables: [Log link](https://drive.google.com/file/d/1QcjXwqW7IPkZkP1hQSdKFQ9iGcmMamTl/view?usp=sharing)

1. Prerequisites: Prepare main.tf file and initialize the configuration.

2. Set the container name with a variable: Create a new file called variables.tf with a block defining a new container_name variable from the tutorial.

3. Apply your configuration:

- terraform apply

Now apply the configuration again, this time overriding the default container name by passing in a variable using the -var flag:

- terraform apply -var "container_name=Ave_Maria"

#### 6. Query data with outputs: [Log link](https://drive.google.com/file/d/1HuiWnM3PBYvxs1SvkSJeR49OKvKQmvQM/view?usp=sharing)

1. Prepare files main.tf and variables.tf from previous steps. Initialize and apply the configuration.

2. Output Docker container configuration: Create a file called outputs.tf in your learn-terraform-docker-container directory and paste configuration from tutorial.

3. Inspect output values: 

- terraform apply

- terraform output

4. Destroy infrastructure:

- terraform destroy

<b>Output:</b>

container_id = "5375fea55aff026f0b084b36a282619f12db4c6a8f0e15900805c77c0d3b4cbe"

image_id = "sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99nginx:latest"
