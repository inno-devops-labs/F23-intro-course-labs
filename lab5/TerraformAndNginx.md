# Terraform

```bash
terraform --version

# Terraform v1.5.3
```

## Install

I ran terraform inside nix shell:

```nu
nix shell "nixpkgs#terraform"
```

## Steps

### Build infrastructure

Create configuration file [main.tf](./main.tf)

```nu
# Initialize terraform. This step requires VPN 💀
terraform init

# Chore: format and validate the main.tf
terraform fmt
terraform validate

# Apply the configuration.
# This will an execution plan before proceeding further.
# Also, it will ask for confirmation, enter "yes" to continue.
terraform apply
```

### Change infrastructure

Then, the tutorial suggests to change the external port for nginx.

```diff
resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "tutorial"
  hostname = "learn-terraform-docker"
  ports {
    internal = 80
-   external = 8000
+   external = 8080
  }
}
```

```nu
# Apply the changes again
terraform apply
```

### Define Input Variables

Create [variables.tf](./variables.tf) file with the following contents

```terraform
variable "container_name" {
  description = "Value of the name for the Docker container"
  type        = string
  default     = "ExampleNginxContainer"
}
```

Update the `docker_container` resource block to use the new variable.

```diff
resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
- name  = "tutorial"
+ name  = var.container_name
  ports {
    internal = 80
    external = 8080
  }
}
```

Now we can overload the default container name

```nu
terraform apply -var "container_name=YetAnotherName"
```

### Query Data with Outputs

Create [outputs.tf](./outputs.tf) file with the following contents

```terraform
output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.nginx.id
}

output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.nginx.id
}
```

This would enable us to query these output variables with

```nu
terraform output

# container_id = "92333d796a33b6c564c8cc539ba0c7ea0066de2f8ca61804d72c83914319e421"
# image_id = "sha256:2002d33a54f72d1333751d4d1b4793a60a635eac6e94a98daf0acea501580c4fnginx:latest"
```
