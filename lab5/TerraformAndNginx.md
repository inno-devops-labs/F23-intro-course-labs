# Terraform

## Installation

*With VPN

```bash
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
terraform -v 
# Terraform v1.5.4
# on darwin_amd64
```

## Steps

1. Create `main.tf` & `output.tf`

2. 
```bash
terraform init
DOCKER_HOST=unix:///Users/$USER/.colima/default/docker.sock terraform apply

# Check outputs

docker ps # see new container with name 'tutorial'

# Open localhost:8000 and see nginx welcome page

DOCKER_HOST=unix:///Users/$USER/.colima/default/docker.sock terraform destroy
```
