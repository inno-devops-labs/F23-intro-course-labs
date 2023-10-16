# Task 1

1. **List Containers**

    For listing the containers I used the command `docker container ls -a`. I used `-a` option to list all (stopped and running) containers.

     ```
     >docker container ls -a
     CONTAINER ID   IMAGE     COMMAND                CREATED          STATUS                      PORTS     NAMES
     46ccc2a70341   new       "python3 -u main.py"   16 minutes ago   Exited (1) 16 minutes ago             focused_williamson
     ```
     
     We also could use `docker ps -a` command for listing the containers.

2. **Pull Latest Ubuntu Image**

    I used the command `docker pull ubuntu:latest`.

    ```
    >docker pull ubuntu:latest
    latest: Pulling from library/ubuntu
    37aaf24cf781: Pulling fs layer
    37aaf24cf781: Verifying Checksum
    37aaf24cf781: Download complete
    37aaf24cf781: Pull complete
    Digest: sha256:9b8dec3bf938bc80fbe758d856e96fdfab5f56c39d44b0cff351e847bb1b01ea
    Status: Downloaded newer image for ubuntu:latest
    docker.io/library/ubuntu:latest
    ```

3. **Run Container**

    The command is `winpty docker run -it ubuntu` to run the container in an interactive mode.

    ```
    > winpty docker run -it ubuntu
    root@e50de6d540e3:/# 
    ```

    To get any relevant information about the container, we can use `docker inspect <container ID>`, where in my case container ID is '46ccc2a7034'. This command provides detailed information about a specific container, including its configuration, network settings, volumes and so on. For example, the begining of the output information is the following:

    ```
    [
    {
        "Id": "46ccc2a703415b475e3c6c3271111e5782e76e2f9fcfde992529630e2f4a5283",
        "Created": "2023-10-07T19:44:32.3270766Z",
        "Path": "python3",
        "Args": [
            "-u",
            "main.py"
        ],
        "State": {
            "Status": "exited",
            "Running": false,
            "Paused": false,
            "Restarting": false,
            "OOMKilled": false,
            "Dead": false,
            "Pid": 0,
            "ExitCode": 1,
            "Error": "",
            "StartedAt": "2023-10-07T19:44:33.5536568Z",
            "FinishedAt": "2023-10-07T19:44:47.1750758Z"
        },
        "Image": "sha256:72ef73fe8f6fd25cd84e84b17959c2f7f9df4f8757dd154ceaaa732d8542b24a",
         ....
    ```

4. **Remove Image**

    ```
    $ docker rmi ubuntu
    Error response from daemon: conflict: unable to remove repository reference "ubuntu" (must force) - container e50de6d540e3 is using its referenced image 3565a89d9e81
    ```
    This error means that we should delete the container `e50de6d540e3` first.

    ```
    > docker rm e50de6d540e3
    e50de6d540e3
    ```

    Now we can remove the image:

    ```
    >docker rmi ubuntu
    Untagged: ubuntu:latest
    Untagged: ubuntu@sha256:9b8dec3bf938bc80fbe758d856e96fdfab5f56c39d44b0cff351e847bb1b01ea
    Deleted: sha256:3565a89d9e81a4cb4cb2b0d947c7c11227a3f358dc216d19fc54bfd77cd5b542
    Deleted: sha256:01d4e4b4f381ac5a9964a14a650d7c074a2aa6e0789985d843f8eb3070b58f7d
    ```

    The image is removed successfully.




