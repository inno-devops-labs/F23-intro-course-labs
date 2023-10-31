# Container Lab

In this lab, we will explore Docker and some basic commands to manage some images and containers.

## Task 1: Container Management

1. List containers: 
   - To view the whole list of container, the user can use the command ```docker container ls [OPTIONS]``` to check and control the container.

2. Pull Latest Ubuntu Image:

    - For pulling images of the *Docker* registery, we can use the command ```docker pull [OPTIONS] NAME[:TAG|@DIGEST]``` or ```docker image pull NAME```. In our case, we used pulling ubuntu, ```docker pull ubuntu ```

3. Run Container:

    - To run the any contaienr in docker, we can the following command after pulling the image: ``` docker run -it ubuntu```

4. Remove Container:

    - To remove a container we pulled , simply we can type ```docker rmi <image-ID>```, where (Image-ID) can be obtained through ```docker images```

