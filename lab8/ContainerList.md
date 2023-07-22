# Docker

## Container Management

### List Containers

```bash
docker image ls
```

```
REPOSITORY                             TAG            IMAGE ID       CREATED        SIZE
nginx                                  latest         2002d33a54f7   2 weeks ago    192MB
ubuntu                                 latest         37f74891464b   3 weeks ago    69.2MB
mcr.microsoft.com/devcontainers/rust   0-1-bullseye   d3d7e07ad47c   6 weeks ago    2.38GB
roundcube/roundcubemail                latest         b6b50d07986e   3 months ago   547MB
gotson/komga                           latest         7fba1bfec68f   4 months ago   417MB
```

### Pull Latest Ubuntu Image

```bash
docker pull "ubuntu:latest"
```

### Run Container

```bash
docker run -ti --rm ubuntu /bin/bash
```

> This command tells Docker to run the Docker Ubuntu container in an interactive terminal mode (-ti).
> The /bin/bash argument is a way of telling the container to run the Bash shell terminal. Finally, the --rm flag instructs Docker to automatically remove the Ubuntu Docker container after we stop it.

### Remove Image

> I had to use `--force` flag

```bash
docker image rm --force <container_id> # 37f74891464b in my case
```
