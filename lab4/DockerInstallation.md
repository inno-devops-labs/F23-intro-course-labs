# Task 2

Even though I had installed docker and docker-compose on my machine, I used virtual machine of university to do it again. 

### Docker

To install docker using pip, I utilized the following command:

```
>>> pip3 install docker
```

To check the version of installed docker I used the following commands:

```
>>> python3
>>> import docker
>>> print(docker.__version__)
6.1.3
```
Note: the installed docker is a python library, therefore to check the version we need to import the library first.

### Docker-compose

```
>>> pip3 install docker-compose
```

To check the version of installed docker-compose I used the following command:

```
>>> docker-compose -v
docker-compose version 1.29.2, build unknown
```

Observations: By using `pip` command we can install a Python library for the Docker Engine API. 
It lets you do anything the docker command does, but from within Python apps – run containers, manage containers and so on.
That is why the docker version can be checked only through Python library.