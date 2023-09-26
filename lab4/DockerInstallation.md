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
4. used `sudo snap install docker` this command will install both of docker and docker-compose
5. ` docker --version` 

    ```bash 
    Docker version 20.10.24, build 297e128
    ```
6. `docker-compose --version`
    ```bash
    docker-compose version 1.29.2, build unknown
    ```