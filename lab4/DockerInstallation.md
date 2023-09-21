# Installing Docker

We can use command:

```sh
pip install docker
```

To install docker, using pip. But instead of installing original docker, it will install python library docker. In the end, we can check its version, using the following python code:

```py
import docker


print(docker.__version__)
```

Running the code, I got version 6.1.3

# Installing docker-compose

To install docker-compose, we can use the following command:

```sh
pip install docker-compose
```

This time, instead of installing just docker-compose python library, it will install docker-compose. We can check its version in the terminal, using:

```sh
docker-compose -v
```

The version, I got in IU virtual machine is 1.29.2