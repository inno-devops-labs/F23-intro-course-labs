1. List containers

Command:

    docker ps -a
    
Output:

    CONTAINER ID   IMAGE          COMMAND                  CREATED       STATUS                        PORTS                  NAMES 57fc104e633b   61395b4c586d   "/docker-entrypoint.…"   2 weeks ago   Exited (255) 18 seconds ago   0.0.0.0:8080->80/tcp   ExampleNginxContainer

2. Pull ubuntu image

Command:

    docker pull ubuntu:latest

3. Run Container

Command:

    docker run -it ubuntu

To run ubuntu the image should be run in interactive mode.

4. Remove Image

Command:

    docker rmi ubuntu

Output:

    Untagged: ubuntu:latest
    Untagged: ubuntu@sha256:9b8dec3bf938bc80fbe758d856e96fdfab5f56c39d44b0cff351e847bb1b01ea
    Deleted: sha256:3565a89d9e81a4cb4cb2b0d947c7c11227a3f358dc216d19fc54bfd77cd5b542
    Deleted: sha256:01d4e4b4f381ac5a9964a14a650d7c074a2aa6e0789985d843f8eb3070b58f7d


