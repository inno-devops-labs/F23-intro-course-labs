# GitOps & SRE Lab

## Task 2: Terraform Installation and Nginx Deployment

- I have installed Terraform v1.5.1
- To install I downloaded zip archive, unarchived it and added folder path to env variables (I have laptop with windows OS)
- To init the project I created the directory first, then added main.tf file inside it with config from the tutorial. Using cmd I "init" and "apply" my project and it builts me 2 resources:
"Apply complete! Resources: 2 added, 0 changed, 0 destroyed." Docker ps command showed that there is 1 active container. "terrafrom destroy" command deleted my container.
- To change the infrastructure I modified main.tf file and then execute "apply" command again.
- To destroy it I used "terraform destroy" and then approved the command.
- To define the variables I created new file and then changed main tf file. After applying these changes terraform created new container with default variable value (ExampleNginxContainer).
- To define outputs I created outputs.md file with 2 outputs. One of them stores container id and second stores image id. After applying changes in cli I saw 2 outputs I had defined before.
- Observations: looks like this is a tool which allows you to make fast changes to your configuration. For instance if I had more container it would be easier to manage them trough the central place rather than changing each container manually.