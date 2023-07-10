# Lab5: SRE

- Zeyad Alagamy
- z.alagamy@innopolis.university
- Bs-CS-01

## Install Terraform:

- According to the [docs](https://developer.hashicorp.com/terraform/tutorials/docker-get-started/install-cli):

- I downloaded the pre-compiled binary [amd64](https://releases.hashicorp.com/terraform/1.5.2/terraform_1.5.2_darwin_amd64.zip). And Unzip it in `/usr/local/bin/` as it is in the PATHs

```bash
$ sudo unzip /home/xp/Downloads/terraform_1.5.2_linux_amd64.zip
```

## Verify the installation

- Find the current version: `v1.5.2`

```bash
$ terraform -version

Terraform v1.5.2
on linux_amd64
```

## Deploy an Nginx container

- According to the docs:

```bash
$ mkdir learn-terraform-docker-container
$ cd learn-terraform-docker-container
```

- Than add the config code to main.tf

- Config code is: 

```
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

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

- Then we can init & apply:

```bash
$ terraform init
$ terraform apply
```


## Any observations or challenges you encountered during the installation and deployment process.

- I faced issues with downloading terraform using wget as specified in the docs it gives `404` error.

- As alternative I tried to download and compile it myself using `go` command but also failed.

- I had to use VPN to access the provider :)