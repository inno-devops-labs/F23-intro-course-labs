### Docker installation

This is how I installed the docker and docker-compose on my Ubunthu machine:
1. Set up the Apt repository
  ```apt-get install ca-certificates curl gnupg```
  ```install -m 0755 -d /etc/apt/keyrings```
  ```curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg```
  ```chmod a+r /etc/apt/keyrings/docker.gpg```
  ```echo \ "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \```
  ```"$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \```
  ```tee /etc/apt/sources.list.d/docker.list > /dev/null```
2. Package installation via apt:
   ```apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin```
3. Check the versions:
   ```docker --version```
   Docker version 24.0.6, build ed223bc
   ```docker compose version```
   Docker Compose version v2.21.0
