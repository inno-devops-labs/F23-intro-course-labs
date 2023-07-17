## Listing Containers
To list the Docker containers present in the environment, I used the following command:
docker ps -a

| CONTAINER ID | IMAGE| COMMAND| CREATED | STATUS | PORTS || NAMES |
| -------- | -------- | -------- | -------- | -------- | -------- | -------- |
|542539a256af | moscowtime  |  "python3 main.py"  |  22 hours ago | Exited (0) 22 hours ago|  |  infallible_clarke |
|2f79473f3197| 9af93caafcc6|   "python3 main.py"  | 22 hours ago |  Exited (1) 22 hours ago |   |         elegant_sinoussi|
|314dc5f9e039|   9af93caafcc6|  "python3 main.py" | 22 hours ago |  Exited (1) 22 hours ago |   |         stoic_lewin|

## Pulling Latest Ubuntu Image
To pull the latest Ubuntu image from the Docker registry, I used the following command:
 docker pull ubuntu:latest

## Running a Container
To run a container using the Ubuntu image, I used the following command:
docker run -it ubuntu

## Removing Image
1. To remove the Ubuntu image that was pulled earlier, I used the following command:
docker rmi ubuntu:latest
2. If you get error while trying to delete, try to stop the container first by using docker stop <container_id>