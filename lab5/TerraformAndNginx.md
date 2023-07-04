# Installation and Deployment Process for Ubuntu

## Terraform Version: 1.5.2

Below are the details of the installation and deployment process for Terraform on Ubuntu:

1. **Step 1: Download Terraform**

    - Visit the [Terraform Downloads page](https://www.terraform.io/downloads.html) and identify the appropriate version for Ubuntu.
    - Copy the download link for the Linux version of Terraform.

2. **Step 2: Install Terraform**

    - Open a terminal.
    - Change to the directory where you want to install Terraform.
    - Run the following command to download Terraform using the copied download link:

      ```shell
      wget <terrafrom_download_link>
      ```

    - Extract the downloaded archive using the following command:

      ```shell
      unzip terraform_<version>.zip
      ```

    - Move the extracted binary to a directory included in your system's PATH variable. For example:

      ```shell
      sudo mv terraform /usr/local/bin/
      ```

3. **Step 3: Verify the Installation**

    - To verify that Terraform has been successfully installed, open a new terminal window and run the following command:

      ```shell
      terraform version
      ```

    - If the installation is successful, the command will display the Terraform version number, confirming that it is properly installed.

4. **Step 4: Initialize and Apply Terraform Configuration**

    - Change to the directory where your Terraform configuration files are located.
    - Run the following command to initialize the Terraform configuration:

      ```shell
      terraform init
      ```

    - This command initializes the working directory and downloads any necessary provider plugins.

    - Once initialization is complete, execute the following command to apply the Terraform configuration and deploy the infrastructure:

      ```shell
      terraform apply
      ```

    - Review the changes that Terraform will make and confirm the deployment by entering `yes` when prompted.

5. **Observations and Challenges**

   During the installation and deployment process, I encountered the following observations and challenges:

    - **Observation:** The Terraform website provides clear documentation and downloads for different operating systems, making it easy to locate the appropriate version for Ubuntu.

    - **Challenge:** Ensuring that the extracted Terraform binary is moved to a directory included in the system's PATH variable required administrative privileges (sudo).

    - **Observation:** The `terraform init` command automatically downloads and installs the necessary provider plugins based on the configuration files.

    - **Challenge:** It is crucial to review the changes that Terraform will apply during the `terraform apply` step to ensure they align with the desired infrastructure state.

By following the above steps, you can successfully install Terraform on Ubuntu, initialize the configuration, and apply it to deploy the desired infrastructure.