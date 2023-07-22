# Container Management

## List Containers:
- Command: docker ps
- Output: (since I'm not running anythying output is empty)
```
docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```

## Pull Latest Ubuntu Image:
- Command: docker pull ubuntu:latest

## Run Container:
- Command:docker run -d --name ubuntu_container ubuntu:latest
- Output: 70a629b4540adc04849a9f4dd87fb68d0cf9e15752a11fb7e2bbb2dc5e7be0ce

## Remove Image:
- Command: docker rmi ubuntu:latest
- Output: Error response from daemon: conflict: unable to remove repository reference "ubuntu:latest" (must force) - container 70a629b4540a is using its referenced image 5a81c4b8502e
