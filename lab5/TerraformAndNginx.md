## Terraform and Nginx

### Installation and Deployment Process

1. Installing Terraform:
   To install Terraform on your system, we have to follow these steps:
    1. Visit the Terraform downloads page.
    2. Download the appropriate Terraform package for your operating system.
    3. Extract the downloaded package.
    4. Move the extracted binary to a directory listed in your system's PATH environment variable.
    5. Verify the installation by running the following command in a terminal:
       `terraform version`

2. My Terraform version: Terraform v1.5.2 on windows_amd64

3. Initializing and applying the Terraform configuration:

    1. Build Infrastructure: Create a Terraform configuration file that describes the desired infrastructure.
    2. Initialize Configuration: In the directory where your Terraform configuration file is located, run the following
       command to initialize Terraform:
       `terraform init`.
    3. Apply Configuration: Apply the Terraform configuration to create or modify the infrastructure by running the
       following command:
       `terraform apply`. Terraform will prompt for confirmation before making any changes. Enter "yes" to proceed. This
       command provisions the defined infrastructure resources.
    4. Change Infrastructure: Make changes to the Terraform configuration file to modify the infrastructure, such as
       adding or removing resources or updating settings.
    5. Re-apply Configuration: After making changes to the Terraform configuration file, run the following command to
       apply the changes:
       `terraform apply`. Terraform will again prompt for confirmation and display a plan of the changes it will make.
       Enter "yes" to apply the changes.
    6. Destroy Infrastructure: To destroy the created infrastructure and clean up resources, run the following command:
       `terraform destroy`. Terraform will display a plan of the resources to be destroyed. Enter "yes" to proceed with
       the destruction.
    7. Define Variables: Terraform allows defining variables that can be used to parameterize the configuration.
       Variables can be defined in a separate .tf file or using command-line flags.
    8. Query Data with Outputs: Terraform supports output variables that can be used to extract and display useful
       information about the created infrastructure. Output variables are defined in the Terraform configuration file
       and can be accessed using the terraform output command.

4. Observations and Challenges
   - It was hard to download terraform due to the region restrictions.