# Terraform

## Installing

To install Terraform I followed the steps from the guide. Also I have some problems with the following commands:

```
wget -O- https://apt.releases.hashicorp.com/gpg
gpg --dearmor
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
```

I was only able to run these lines in promt using a vpn as access to gpg is blocked from Russia.

With the next line I installed Terraform:

```
sudo apt-get install terraform
```

and as a result Terraform was installed. Then I tried to verify the installation with the next command:

```
terraform --version
```

And I got the next output:

```
Terraform v1.6.0
on linux_amd64
```

## Build the infrastructure.

In the created directory I created a main.tf file and filled it with configuration. Using ```terraform init ``` command I have initialised my directory.
Now I can validate configuration with command

```
terraform validate
```

and then I got the message:

```
Success! The configuration is valid.
```

After ``terraform, apply ``terraform peform described in main.tf Actions

## Modify infrastructure

Now according to the tutorial I have changed the external port from 8000 to 8080 in main.tf.
After ```terraform apply ``` I got next message showing that infrastructure was changed successfully:

```
Plan: 1 to add, 0 to change, 1 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

docker_container.nginx: Destroying... [id=3f7a52f8f96550bf38cafee7c137d88f8655ac9eeb8e90eb47b9f324e3205565]
docker_container.nginx: Destruction complete after 1s
docker_container.nginx: Creating...
docker_container.nginx: Creation complete after 0s [id=38ef7b43a6fcc16693a27a634667e6a7be6840f97d7d48308d782a7189212a54].
```

## Destroy Infrastructure

The simple command ``terraform destroy`` is used to destroy infrastructure.

So I got the next message:

```
Plan: 0 to add, 0 to change, 2 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

docker_container.nginx: Destroying... [id=38ef7b43a6fcc16693a27a634667e6a7be6840f97d7d48308d782a7189212a54]
docker_container.nginx: Destruction complete after 0s
docker_image.nginx: Destroying... [id=sha256:61395b4c586da2b9b3b7ca903ea6a448e6783dfdd7f768ff2c1a0f3360aaba99nginx:latest]
docker_image.nginx: Destruction complete after 0s
```
## Defining variables
Guided by tutorial I have created ``variables.tf`` file and fill it with name of container. Then I applied infrastructure and validated it with ```docker ps``` command. I got next message:

```
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                  NAMES
7ff77a08b6e8   bc649bab30d1   "/docker-entrypoint.…"   46 seconds ago   Up 45 seconds   0.0.0.0:8080->80/tcp   ExampleNginxContainer
```

It can be seen that container has new name **ExampleNginxContainer**.

Then I have changed it name with command:

```
terraform apply -var "container_name=YetAnotherName"
```

and checked it again with ```docker ps``` command.

```
CONTAINER ID   IMAGE          COMMAND                  CREATED         STATUS         PORTS                  NAMES
0c459d919a5f   bc649bab30d1   "/docker-entrypoint.…"   3 minutes ago   Up 3 minutes   0.0.0.0:8080->80/tcp   YetAnotherName
```

and here I see that new names have been set.

## Query data with output

I have created a new file called ``output.tf`` and filled it with ids, then after ``terraform apply`` I have checked my outputs with ``terraform output`` and got my outputs:

```
container_id = "cd9577baf623c30e55806971d65eb79829cc74c99f95e4c4b44d40a11e8fc603"
image_id = "sha256:bc649bab30d150c10a84031a7f54c99a8c31069c7bc324a7899d7125d59cc973nginx:latest"
```

## Conclusions and problems

I finished the Terraform tutorial and now know more about IaC. I got stuck on some chapters because I didn't understand that I should have used VPN to get access to the gcg key.
