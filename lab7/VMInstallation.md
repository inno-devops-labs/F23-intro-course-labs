# Virtual Box INstallation on Fedora

## Step 1. Upgrade
```bash
sudo dnf -y upgrade
sudo reboot
```

## Step 2. Install Dependencies
```bash
sudo dnf -y install @development-tools
sudo dnf -y install kernel-headers kernel-devel dkms elfutils-libelf-devel qt5-qtx11extras
```

## Step 3. Add VM RPM Repository (in my case for Fedora 38)
```bash
cat <<EOF | sudo tee /etc/yum.repos.d/virtualbox.repo 
[virtualbox]
name=Fedora VirtualBox Repo
baseurl=http://download.virtualbox.org/virtualbox/rpm/fedora/38/\$basearch
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://www.virtualbox.org/download/oracle_vbox_2016.asc
EOF
```

## Step 4. Import VM GPG Key
```bash
sudo dnf search virtualbox
```

## Step 5. Install VM 7.0
```bash
sudo dnf install VirtualBox-7.0
```

## Step 6. Install MOK keys (in case of Secure Boot)
```bash
sudo mkdir -p /var/lib/shim-signed/mok
sudo openssl req -nodes -new -x509 -newkey rsa:2048 -outform DER -addext "extendedKeyUsage=codeSigning" -keyout /var/lib/shim-signed/mok/MOK.priv -out /var/lib/shim-signed/mok/MOK.der
sudo mokutil --import /var/lib/shim-signed/mok/MOK.der
sudo reboot
```

## Step 7. Add your user to the vboxusers group
```bash
sudo usermod -a -G vboxusers $USER
newgrp vboxusers
id $USER
```

## Step 8. Launch VM
```bash
virtualbox
```
