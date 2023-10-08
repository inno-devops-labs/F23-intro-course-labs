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
  name  = "lab5"

  ports {
    internal = 80
    external = var.external_port  # Use the variable here

  }
}

variable "external_port" {
  description = "The external port for the nginx container"
  type        = number
  default     = 8080
}

output "nginx_container_id" {
  value = docker_container.nginx.id
  description = "The ID of the nginx container"
}
