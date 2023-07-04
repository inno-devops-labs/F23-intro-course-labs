# Terraform and Nginx

1. v1.5.2
2. To install I downloaded zip archive, unarchived it and added folder path to env variables (I have laptop with windows OS)

   - I first created the directory for the project
   - I inserted the main.tf file inside of it with the configuration from the instruction.
   - I "init" and "apply" my project using terminal commands, and it creates two resources for me:
     "Apply finished! Resources: Added 2, Modified 0, and Destroyed 0. There is only one active container, according to the Docker ps command. The command "terrafrom destroy" removed my container.

3. I changed the main.tf file and then ran the "apply" command once more to change the infrastructure.
4. I used the command "terraform destroy" to demolish it after giving my approval.
5. I first updated the main.tf file before creating a new file to define the variables. Terraform produced a new container with the default variable value (ExampleNginxContainer) after applying these changes.
   I made an out.md file with two outputs to define outputs. I did observ 2 outputs with respect to applied modifications in CLI.

## Observations

First things first, teraform is banned for Russians. From higher perspective it is more convinient to use terraform to manage configuration flow rather than raw docker.
