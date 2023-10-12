# Terraform

## Installng

To install Terraform I have followed steps from guide. Also I have some problems with next commands:

```
wget -O- https://apt.releases.hashicorp.com/gpg
gpg --dearmor
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
```

I could execute this lines in promt only with vpn due to access to gpg kay in blocked from Russia

Using next line i have installed Terraform:

```
sudo apt-get install terraform
```

and as result, Terrafirm was installed. Than i tried check installation with next command:

```
terraform --version
```

And i got next output:

```
Terraform v1.6.0
on linux_amd64
```

## Build infrastructure.

In created directory i have created main.tf file and fill it with configuration. Using ``` terraform init ``` command, i have initialized my directory.
Now i can validate configuration using command:

```
terraform validate
```

and then i got message:

```
Success! The configuration is valid.
```

After ``` terraform apply ``` 

