## 1. List Containers

- command: `docker ps -a`
- output: 

<img width="720" alt="image" src="https://github.com/dariamikl/labs/assets/32385940/c68f4e0f-879e-4512-9aa9-9bd50c565e46">

## 2. Pull Latest Ubuntu Image

- command: `docker pull ubuntu:latest`
- output:

<img width="487" alt="image" src="https://github.com/dariamikl/labs/assets/32385940/a2f00168-5e93-45c6-b0bf-caa4ef5a5eb2">

## 3. Run Container

- command: `docker run -it ubuntu /bin/bash` – running in interactive mode
- output: 
<img width="626" alt="image" src="https://github.com/dariamikl/labs/assets/32385940/f5abf110-18b5-4376-b372-b80217432dfc">

`uname -a` command gives information about the system

## 4. Remove Image

- command: `docker rmi ubuntu`
- output: `Error response from daemon: conflict: unable to remove repository reference "ubuntu" (must force) - container 89c03c5cebe1 is using its referenced image 5a81c4b8502e`
- we can use force-delete: `docker rmi --force ubuntu`
- output: 
<img width="554" alt="image" src="https://github.com/dariamikl/labs/assets/32385940/b6b5045c-be61-4184-857c-ebb731f86e8a">

