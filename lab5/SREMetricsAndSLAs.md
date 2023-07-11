Terraform version: 1.5.2

Steps: 
    1. I visited "https://developer.hashicorp.com/terraform/downloads"
    2. Download the "AMD64" type for windows
    3. Extracted archive in new folger, "Local disk C" in my case
    4. Then I opende cmd, to check the terraform for installation
    5. I used "cd" command to change the directory of cmd
    6. I checked the terraform for installation, using "terraform -version" command
    7. After this I created the configuration file "Bernyaev.tf"
Commands: 
    - "cd" to change the directory in the command line
    - "terraform -help" to see all available commands in terraform
    - "terraform -version" to see the version of installed terraform
Configuration file:
    - Name - "Bernyaev.tf"
    - File content:
        # Bernyaev.tf
        # Define the provider
        provider "aws" {
        region = "us-west-2"
        }

        # Define a single EC2 instance resource
        resource "aws_instance" "example_instance" {
        ami           = "ami-0c94855ba95c71c99" # Amazon Linux 2
        instance_type = "t2.micro"

        tags = {
        Name = "example-instance"
        }
        }
    