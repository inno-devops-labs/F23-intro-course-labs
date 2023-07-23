# Task 1: Container Management
---
### List containers
`sudo docker image ls`
Output:
REPOSITORY   TAG       IMAGE ID   CREATED   SIZE

### Pull Latest Ubuntu Image
`sudo docker pull ubuntu:latest`

### Run Container
`sudo docker run ubuntu:latest`

### Remove Image
`sudo docker rmi ubuntu:latest`
Output:
Error response from daemon: conflict: unable to remove repository reference "ubuntu:latest" (must force) - container 74c2debd7586 is using its referenced image 5a81c4b8502e
