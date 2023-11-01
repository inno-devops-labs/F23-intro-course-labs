# Container Management

## List Containers

To list all Docker containers present in our environment, we use the following command:

```bash
docker ps -a
```

This command will show all containers, their IDs, image names, command, created time, status, ports, and names.

Output:
![list contatiners](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/4f03a6f5-580c-41a2-b486-b3052718a510)

## Pull Latest Ubuntu Image
To pull the latest Ubuntu image from the Docker registry, we use the following command:
```bash
docker pull ubuntu:latest
```
This command fetches the latest version of the Ubuntu image from the Docker registry.

Output:

![pull](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/bae363aa-f8ee-456a-9ffa-427d1d91daa3)


## Verify Pull
To ensure that the Ubuntu image has been pulled successfully, we can list the images in our environment using the following command:
```
docker images
```

Output:

![verify](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/d76fd63d-6783-4e61-92ce-ce158072a814)



## Run Container
To run a container using the Ubuntu image we just pulled, we use the following command:
```
docker run -it --name test ubuntu:latest
```
This command creates a new container named `test` from the `ubuntu:latest` image and opens an interactive terminal (`-it`) inside the container.

## Attempt Remove Image
Attempt to remove the Ubuntu image with the following command:
```
docker rmi e4d5895818a
```
This command attempts to remove the `ubuntu:latest` image from my environment. If there are any running or stopped containers based on this image, the removal will fail, as indicated in the following output:

![remove attemtp](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/f7f61f1f-44c2-4ba5-ae31-437fdc60df98)

## Force Remove

As the previous step failed due to existing containers, we can forcibly remove the image with the following command:

```
docker rmi -f e4d5895818a
```

Output:

![force remove](https://github.com/AhmadTaha96/intro-course-labs/assets/91129320/a1938e8a-71ac-4808-9f91-6d081ce43e20)

This command forcibly removes the `ubuntu:latest` image from our environment, regardless of whether there are containers based on this image, or we can remove first the associated containers then remove it.
