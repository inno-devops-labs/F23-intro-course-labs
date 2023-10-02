# Docker Installation 

**Installing the docker using these steps:**

1. `pip install docker `
2. `pip install docker-compose`

    the second step failed with the following error: 

    ```bash
    note: This error originates from a subprocess, and is likely not a problem with pip.
    error: subprocess-exited-with-error

    × Getting requirements to build wheel did not run successfully.
    │ exit code: 1
    ╰─> See above for output.
     ```
3. tried using `sudo`, `pip3` still get the same error
4. using a freshly installed OS: the first two command work proprely without erros and the output was as follows:
    ```bash
    Successfully installed charset-normalizer-3.3.0 docker-6.1.3 packaging-23.2 requests-2.31.0 websocket-client-1.6.3
    ```
    ```bash
    Successfully installed attrs-23.1.0 bcrypt-4.0.1 cffi-1.16.0 docker-compose-1.29.2 dockerpty-0.4.1 docopt-0.6.2 jsonschema-3.2.0 paramiko-3.3.1 pycparser-2.21 pyrsistent-0.19.3 python-dotenv-0.21.1 texttable-1.6.7 websocket-client-0.59.0
    ```
5. used `sudo snap install docker` this command will install both of docker and docker-compose
6. ` docker --version` 

    ```bash 
    Docker version 20.10.24, build 297e128
    ```
7. `docker-compose --version`
    ```bash
    docker-compose version 1.29.2, build unknown
    ```