output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.nginx.id
}

output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.nginx.id
}

output "port" {
  description = "The port used to access the container"
  value       = docker_container.nginx.ports[0].external
}