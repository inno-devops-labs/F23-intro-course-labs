terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  host    = "npipe:////.//pipe//docker_engine"
}

variable "image_version" {
  description = "Version of the nginx image"
  type        = string
  default     = "latest"
}

resource "docker_image" "nginx" {
  name         = "nginx:${var.image_version}"
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

output "container_id" {
  value = docker_container.nginx.id
}