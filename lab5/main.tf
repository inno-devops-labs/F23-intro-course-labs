variable "nginx_port" {
    type    = number
    default  = 8080
}

terraform {
    required_providers {
        docker  = {
            source  = "kreuzwerker/docker"
            version  = "3.0.2"
        }
    }
}

# Define the provider
provider "docker" {
    host  = "unix:///var/run/docker.sock"
}

# Define the Nginx container
resource "docker_container" "nginx" {
    name  = "nginx_container"
    image  = "nginx:latest"
    ports {
        internal  = 80
        external  = var.nginx_port
    }
    restart  = "always"
}

# Get logs from the container
data "docker_logs" "nginx_logs" {
    name  = docker_container.nginx.name
}

# Output the logs
output "nginx_logs" {
    value  = data.docker_logs.nginx_logs.logs_list_string
}
