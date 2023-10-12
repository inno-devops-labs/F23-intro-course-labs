variable "container_name" {
  description = "Name of the Docker container"
  default     = "tutorial"
}

variable "external_port" {
  description = "External port for the Docker container"
  default     = 8080
}
