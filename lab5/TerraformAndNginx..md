# Lab 05:
## Task 2: Terraform Installation and Nginx Deployment


**Terraform:**  is an Iac tool (instruction-as-code) that supervises and manage of an infastructure through code process rather than manually. It works on HashiCorp configuration language.

In order to install and configure the tool, first to we have to use VPN service to override the geographical restriction.


### Terraform installing:
1. With the aid of **Choco** tool we installed terraform by using command `choco install terraform`.
then we run command `terraform --version` to verify installation.
   

      ```bash
        Terraform v1.5.7
        on windows_amd64
      ```
### Creating and Building Infastructure:
2. We already have *Docker* installed since Lab 4, now we open it and create a file called `main.tf` in `lab5` folder, then  and paste the following Terraform configuration into it.
    ```bash
    terraform {
      required_providers {
        docker = {
          source  = "kreuzwerker/docker"
          version = "~> 3.0.2"
        }
      }
    }

    provider "docker" {
    host    = "npipe:////.//pipe//docker_engine"
    }

    resource "docker_image" "nginx" {
    name         = "nginx"
    keep_locally = false
    }

    resource "docker_container" "nginx" {
    image = docker_image.nginx.image_id
    name  = "tutorial"

    ports {
      internal = 80
      external = 8000
    }
    }
    ```
3. After setting up the configuration in main file, we open powershell and write command `terraform init` 
4. After Ensuring everything is initialized successfully , we can run command `terraform apply`. The following output is : 

    ```bash
    docker_image.nginx: Creating...
    docker_image.nginx: Still creating... [10s elapsed]
    docker_image.nginx: Creation complete after 13s [id=sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99nginx]
    docker_container.nginx: Creating...
    docker_container.nginx: Creation complete after 5s [id=5f0c53101914c7858d09d5e83f7c7c9d49d78101719917d25ed22dd4a3e14914]
    ```
    We can see from above the the infastructure was created successfully.





5. From there we proceeeded to [localhost:8000](localhost:8000) and verified that NGINX is installed properly. also with `docker ps` : 
   
   ```bash
    CONTAINER ID   IMAGE          COMMAND                  CREATED         STATUS         PORTS                  NAMES
    5f0c53101914   61395b4c586d   "/docker-entrypoint.…"   9 minutes ago   Up 9 minutes   0.0.0.0:8000->80/tcp   tutorial
   ```

### Changing Infastructure:

6.  In this step we will try to modify some configurations.  
   The port number is changed from `8000` to `8080`.
   After that we apply `terraform apply` and the changes was visible in the output 

   ```bash
      # docker_container.nginx must be replaced
      ~ ports {
          ~ external = 8000 -> 8080 # forces replacement
            # (3 unchanged attributes hidden) 
        }
       Plan: 1 to add, 0 to change, 1 to destroy.

      Do you want to perform these actions?
      Terraform will perform the actions described above.
      Only 'yes' will be accepted to approve.

        Enter a value: yes

        docker_container.nginx: Destroying... [id=5f0c53101914c7858d09d5e83f7c7c9d49d78101719917d25ed22dd4a3e14914]
        docker_container.nginx: Destruction complete after 1s
        docker_container.nginx: Creating...
        docker_container.nginx: Creation complete after 1s [id=e675502f96648c19a94459176c299f423d3824f1bc2da8c67a3f6e18e621478e]   

  ```
  ### Destroying Infastructure:

  The usage of`terraform destroy` command terminates resources operated by the platform terraform.
  
  ```bash
            # docker_image.nginx will be destroyed
            - resource "docker_image" "nginx" {
                - id           = "sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99nginx" -> null
                - image_id     = "sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99" -> null
                - keep_locally = false -> null
                - name         = "nginx" -> null
                - repo_digest  = "nginx@sha256:32da30332506740a2f7c34d5dc70467b7f14ec67d912703568daff790ab3f755" -> null
              }

          Plan: 0 to add, 0 to change, 2 to destroy.

          Do you really want to destroy all resources?
            Terraform will destroy all your managed infrastructure, as shown above.
            There is no undo. Only 'yes' will be accepted to confirm.

            Enter a value: yes

          docker_container.nginx: Destroying... [id=e675502f96648c19a94459176c299f423d3824f1bc2da8c67a3f6e18e621478e]
          docker_container.nginx: Destruction complete after 1s
          docker_image.nginx: Destroying... [id=sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99nginx]
          docker_image.nginx: Destruction complete after 0s

        Destroy complete! Resources: 2 destroyed.
  ```
### Define Variables:

In this step we will define a new file called `variables.tf` to define new config. that are flexible and easy to re-use, rather than the hard-coded ones in `main.tf` file. We pasted the cnofigurations from website tutorial.  
`terraform apply`
  ```bash
          Changes to Outputs:
        ~ container_id = "ac527a91763ba2fa132e98df02a014b297b85cbb7b2eb2153d14f6f084d09eb9" -> (known after apply)

      Do you want to perform these actions?
        Terraform will perform the actions described above.
        Only 'yes' will be accepted to approve.

        Enter a value: yes

      docker_container.nginx: Destroying... [id=ac527a91763ba2fa132e98df02a014b297b85cbb7b2eb2153d14f6f084d09eb9]
      docker_container.nginx: Destruction complete after 1s
      docker_container.nginx: Creating...
      docker_container.nginx: Creation complete after 1s [id=7fe2b0907c0bae85232c129eed1e4ddfa713dd4b421bebfd64e877ac0ddcbfca]

      Apply complete! Resources: 1 added, 0 changed, 1 destroyed.
  ```
    
      

with command `terraform apply -var "container_name=YetAnotherName"`
```bash
   Changes to Outputs:
  ~ container_id = "7fe2b0907c0bae85232c129eed1e4ddfa713dd4b421bebfd64e877ac0ddcbfca" -> (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

    docker_container.nginx: Destroying... [id=7fe2b0907c0bae85232c129eed1e4ddfa713dd4b421bebfd64e877ac0ddcbfca]
    docker_container.nginx: Destruction complete after 0s
    docker_container.nginx: Creating...
    docker_container.nginx: Creation complete after 1s [id=8b76e5b722879c1afbad2f07e5efb4b13800dca4e8a93af34df515ffd35c225b]

  Apply complete! Resources: 1 added, 0 changed, 1 destroyed.
   `terraform output`
      ```bash
      Outputs:
          container_id = "15f9ded9725fec723b553fe037e30656a014c05519be711bd5bac9b793b6f095"
          image_id = "sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99nginx:latest"
```


### Query data with outputs:

Let's create a new file called `outputs.tf` so we can input configurations to define outputs for your container's ID and the image ID.

After that we applied command `terraform apply` following `terraform output`

The output is :

```bash
container_id = "ac527a91763ba2fa132e98df02a014b297b85cbb7b2eb2153d14f6f084d09eb9"
image_id = "sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99nginx"

```