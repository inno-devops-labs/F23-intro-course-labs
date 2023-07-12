# Container Management

1. To list Docker containers, you can use the command `docker ps -a`

2. To pull the latest Ubuntu image from the Docker registry, you can use the command `docker pull ubuntu:latest`

3. To run a container using the Ubuntu image you just pulled, you can use the command `docker run -it ubuntu:latest`

4. To remove the Ubuntu image you pulled earlier, you can use the command `docker rmi ubuntu:latest`
   In our case it did not work as the image was still in use by the container we created in the previous step. I used -f flag to force the removal of the image: `docker rmi -f ubuntu:latest`
   However, this will not remove related containers that are still running. To remove containers, you can use the command `docker rm $(image id)`

Screenshot of all actions:
![Alt text](https://i.ibb.co/0FGhgTk/docker1-5.png)
