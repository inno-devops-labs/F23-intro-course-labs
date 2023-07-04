output "container_id" {
  description = "container_id of the Docker container"
  value       = docker_container.nginx.id
}

output "image_id" {
  description = "image_id of the Docker image"
  value       = docker_image.nginx.id
}