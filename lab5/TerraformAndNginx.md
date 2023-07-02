# Terraform Installation and Usage

Since i am using windows, so i will share tutorial for windows.

To install Terraform on Windows and go through the tutorial steps, follow the instructions below:

1. **Download Terraform**:
   - Visit the official Terraform downloads page: [Terraform Downloads](https://www.terraform.io/downloads.html)
   - Look for the Windows version and click on the "64-bit" link to download the ZIP archive.

2. **Extract Terraform**:
   - Locate the downloaded ZIP archive and extract its contents to a directory of your choice.
   - It is recommended to extract the files to a location that is included in your system's PATH environment variable. For example, `your main c directory`.

3. **Add Terraform to PATH**:
   - Open the Start menu and search for "Environment Variables."
   - Select "Edit the system environment variables."
   - In the "System Properties" window, click on the "Environment Variables" button.
   - In the "System variables" section, select the "Path" variable and click on "Edit."
   - Click on "New" and enter the path to the directory where you extracted the Terraform files (e.g., `your main c directory`).
   - Click "OK" to save the changes.

4. **Verify the Installation**:
   - Open a new command prompt or PowerShell window.
   - Run the following command to verify that Terraform is installed correctly:
     ```
     terraform version
     ```
   - This command should display the installed version of Terraform, indicating a successful installation.

Now that Terraform is installed, you can proceed with the tutorial steps. Here's a brief overview of each step:

1. **Build Infrastructure**: Create a new directory for your Terraform project (e.g., `your main c directory`) and navigate to it using the command prompt or PowerShell. Create a new Terraform configuration file with the extension `.tf` (e.g., `main.tf`). Inside this file, define the resources you want to create, such as AWS instances or Azure virtual machines.

2. **Change Infrastructure**: Make modifications to the Terraform configuration file to update or add resources. Terraform will intelligently determine the changes required to reach the desired state and create an execution plan. Use the `terraform plan` command to preview the changes before applying them.

3. **Destroy Infrastructure**: If you want to remove the infrastructure created by Terraform, use the `terraform destroy` command. This will destroy all resources defined in your Terraform configuration.

4. **Define Variables**: Create a separate file (e.g., `variables.tf`) to define variables that can be used in your Terraform configuration. Variables allow you to parameterize your configurations and make them more reusable and flexible.

5. **Query Data with Outputs**: Define output blocks in your Terraform configuration to extract and display useful information after the infrastructure is created. For example, you can output the IP address of a newly created server. Use the `terraform output` command to view the outputs.
