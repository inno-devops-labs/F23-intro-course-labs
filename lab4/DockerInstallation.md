# Software Distribution

## Installing Docker and Docker Compose

1. Although I already had Docker installed on my machine, according to [documentation](https://docs.docker.com/engine/install/ubuntu/), the recommended steps are as follows:

   - Add Docker’s official GPG key
       ```bash
       sudo install -m 0755 -d /etc/apt/keyrings
       curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
       sudo chmod a+r /etc/apt/keyrings/docker.gpg
       ```
   - Set up the stable repository
       ```bash
     echo \
     "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
     "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
     sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
       ```

   - Install Docker Engine
       ```bash
     sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
       ```
   - Install Docker Composer
       ```bash
     sudo apt-get install docker-compose-plugin
       ```

2. The versions I have are:
    - Docker: 24.0.2, build cb74dfc
    - Docker Compose: 1.29.2