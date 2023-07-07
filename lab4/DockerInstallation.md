# Lab 4: Software Distribution

- Zeyad Alagamy
- z.alagamy@innopolis.university
- BS-Cs-01

## 1. The commands or steps you followed to install Docker and Docker Compose.

### For docker:

- According to [docs](https://pypi.org/project/docker/):

```bash
$ pip install docker
```

- I have it already. Thus, It gives the following:

```
Requirement already satisfied: docker in /usr/lib/python3/dist-packages (5.0.3)
```

### For `docker-compose`:

- Used

```bash
$ pip install docker-compose
```

- And since I have docker-compose already installed. The output is:

```
Requirement already satisfied: docker-compose in /usr/lib/python3/dist-packages (1.29.2)
```

### 2. The version number of Docker and Docker Compose you installed.

### Docker:

- Using the following command:

```bash
$ docker version

Client:
 Version:           20.10.21
 API version:       1.41
 Go version:        go1.18.1
 Git commit:        20.10.21-0ubuntu1~22.04.3
 Built:             Thu Apr 27 05:57:17 2023
 OS/Arch:           linux/amd64
 Context:           default
 Experimental:      true

Server:
 Engine:
  Version:          20.10.21
  API version:      1.41 (minimum version 1.12)
  Go version:       go1.18.1
  Git commit:       20.10.21-0ubuntu1~22.04.3
  Built:            Thu Apr 27 05:37:25 2023
  OS/Arch:          linux/amd64
  Experimental:     false
 containerd:
  Version:          1.6.12-0ubuntu1~22.04.3
  GitCommit:
 runc:
  Version:          1.1.4-0ubuntu1~22.04.3
  GitCommit:
 docker-init:
  Version:          0.19.0
  GitCommit:

```

- The `docker` version is `20.10.21`

### Docker-compose:

- Using the following command:

```bash
$ docker-compose version

docker-compose version 1.29.2, build unknown
docker-py version: 5.0.3
CPython version: 3.10.6
OpenSSL version: OpenSSL 3.0.2 15 Mar 2022

```

- `Docker-compose` version is `1.29.2`.

## 3. Any observations or challenges you encountered during the installation process.

Got no challenges as it was already installed :)
