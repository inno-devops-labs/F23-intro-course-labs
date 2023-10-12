# Terraform

## Installng

To install Terraform I have followed steps from guide. Also I have some problems with next commands:

```
wget -O- https://apt.releases.hashicorp.com/gpg
gpg --dearmor
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
```

I could execute this lines in promt only with vpn due to access to gpg kay in blocked from Russia

Using next line i have installed Terraform:

```
sudo apt-get install terraform
```

and as result, Terrafirm was installed. Than i tried check installation with next command:

```
terraform --version
```

And i got next output:

```
Terraform v1.6.0
on linux_amd64
```

## Build infrastructure.

In created directory i have created main.tf file and fill it with configuration. Using ``` terraform init ``` command, i have initialized my directory.
Now i can validate configuration using command:

```
terraform validate
```

and then i got message:

```
Success! The configuration is valid.
```

After ``` terraform apply ``` terraform peform described in main.tf actions

## Change infrastructure

Now, according to tutorial i have changed external port from 8000 to 8080 in main.tf file.
After ``` terraform apply ``` i got next message showing that infrastructure changeged succesfully:

```
Plan: 1 to add, 0 to change, 1 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

docker_container.nginx: Destroying... [id=3f7a52f8f96550bf38cafee7c137d88f8655ac9eeb8e90eb47b9f324e3205565]
docker_container.nginx: Destruction complete after 1s
docker_container.nginx: Creating...
docker_container.nginx: Creation complete after 0s [id=38ef7b43a6fcc16693a27a634667e6a7be6840f97d7d48308d782a7189212a54]
```

## Destroy infrastructure

Simple commamd ```terraform destroy``` used to destroy infrastructure

So i got next message:

```
Plan: 0 to add, 0 to change, 2 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

docker_container.nginx: Destroying... [id=38ef7b43a6fcc16693a27a634667e6a7be6840f97d7d48308d782a7189212a54]
docker_container.nginx: Destruction complete after 0s
docker_image.nginx: Destroying... [id=sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99nginx:latest]
docker_image.nginx: Destruction complete after 0s
```
## Define variables
Leaded by tutorial i have created ```variabeles.tf``` file and fill it with name of container. Than i have apply infrastructure and validate it with ```docker ps``` command. I got next message:

```
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                  NAMES
7ff77a08b6e8   bc649bab30d1   "/docker-entrypoint.…"   46 seconds ago   Up 45 seconds   0.0.0.0:8080->80/tcp   ExampleNginxContainer
```

It cam be seen that container have new name **ExampleNginxContainer**.

Than i have changed it name with command:

```
terraform apply -var "container_name=YetAnotherName"
```

and again check it with ```docker ps``` command.

```
CONTAINER ID   IMAGE          COMMAND                  CREATED         STATUS         PORTS                  NAMES
0c459d919a5f   bc649bab30d1   "/docker-entrypoint.…"   3 minutes ago   Up 3 minutes   0.0.0.0:8080->80/tcp   YetAnotherName
```

and here i see that new name have been set.

## Query Data with Outputs

I have created new file called ```output.tf``` and fill it with ids, then after ```terraform apply``` i have check my outputs with ```terraform output``` and got my outputs:

```
container_id = "cd9577baf623c30e55806971d65eb79829cc74c99f95e4c4b44d40a11e8fc603"
image_id = "sha256:bc649bab30d150c10a84031a7f54c99a8c31069c7bc324a7899d7125d59cc973nginx:latest"
```

## Conclusions and trobles

I have finished terraform tutorial and now know more about IaC. I got stuck at some chapters due to didn't understand that i shoud have used VPN to get access to gcg key.

