output "container_id" {
  description = "ID of the Nginx container"
  value       = docker_container.nginx.id
}

output "image_id" {
  description = "ID of the Nginx image"
  value       = docker_image.nginx.image_id
}
