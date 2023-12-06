### Task 1 - Container Management
#### List Containers
I run command for list of docker conteiners present `sudo docker ps`. Since I do not have any containers currently installed, I received empty list:

`CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES`
#### Docker pull
In order to pull Ubuntu pytorch docker I run `sudo docker pull anibali/pytorch:2.0.1-cuda11.8`. After few seconds the pull was comlete:

2.0.1-cuda11.8: Pulling from anibali/pytorch
6b851dcae6ca: Pull complete 
4586c00479c6: Pull complete 
4304fa233a80: Pull complete 
afa3f70b397f: Pull complete 
d963a42bc712: Pull complete 
20d22dc479a9: Pull complete 
67c7ea5794ec: Pull complete 
11b115af14d2: Pull complete 
4f4fb700ef54: Pull complete 
33edea046917: Pull complete 
a5798a7786f0: Pull complete 
ff46da4b9406: Pull complete 
e54377563ec8: Pull complete 
a673d59c9847: Pull complete 
334774b5e365: Pull complete 
155e16016950: Pull complete 
Digest: sha256:461c190664f2a7cc692ece4885a794c7369ad0c803b86d73636f112add80527e
Status: Downloaded newer image for anibali/pytorch:2.0.1-cuda11.8
docker.io/anibali/pytorch:2.0.1-cuda11.8

#### Docker run
In order to run the container, I entered the command `sudo docker run -it --gpus all d0bc27b47d12` where the last sequence is the Image ID of the pulled docker. As expected, the docker provided me a python console with the cuda installed.

#### Docker remove
In order to remove the pulled image, I just used `sudo docker system prune --all` which deletes all non-running containers and images



