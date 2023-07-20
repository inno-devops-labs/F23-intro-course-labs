# Containers Lab - Docker

### 1. List Containers:

To list the Docker containers:

```bash
docker ps -a
```

Output (example):
```
CONTAINER ID   IMAGE                                COMMAND                  CREATED        STATUS                      PORTS                                                                                                                                                                                                                                                                                                                                                                                                                                   NAMES
e9c797d532ae   graylog/graylog:5.0                  "/usr/bin/tini -- wa…"   3 weeks ago    Up 17 hours (unhealthy)     0.0.0.0:5044->5044/tcp, :::5044->5044/tcp, 0.0.0.0:5140->5140/tcp, 0.0.0.0:5140->5140/udp, :::5140->5140/tcp, :::5140->5140/udp, 0.0.0.0:5555->5555/tcp, :::5555->5555/tcp, 0.0.0.0:9000->9000/tcp, 0.0.0.0:5555->5555/udp, :::9000->9000/tcp, :::5555->5555/udp, 0.0.0.0:12201->12201/tcp, :::12201->12201/tcp, 0.0.0.0:13301-13302->13301-13302/tcp, :::13301-13302->13301-13302/tcp, 0.0.0.0:12201->12201/udp, :::12201->12201/udp   open-core-graylog-1
88032fb46702   opensearchproject/opensearch:2.4.0   "./opensearch-docker…"   3 weeks ago    Exited (0) 2 weeks ago                                                                                                                                                                                                                                                                                                                                                                                                                                              open-core-opensearch-1
c02bb88dc7fd   mongo:5.0                            "docker-entrypoint.s…"   3 weeks ago    Exited (0) 2 weeks ago                                                                                                                                                                                                                                                                                                                                                                                                                                              open-core-mongodb-1
b2103c76261f   docker-elk_logstash                  "/usr/local/bin/dock…"   5 weeks ago    Exited (137) 5 weeks ago                                                                                                                                                                                                                                                                                                                                                                                                                                            docker-elk_logstash_1
0646b1ae368f   docker-elk_kibana                    "/bin/tini -- /usr/l…"   5 weeks ago    Exited (0) 5 weeks ago                                                                                                                                                                                                                                                                                                                                                                                                                                              docker-elk_kibana_1
b50cb13d0901   docker-elk_setup                     "/entrypoint.sh"         5 weeks ago    Exited (0) 5 weeks ago                                                                                                                                                                                                                                                                                                                                                                                                                                              docker-elk_setup_1
ecb527a141b4   docker-elk_elasticsearch             "/bin/tini -- /usr/l…"   5 weeks ago    Exited (143) 5 weeks ago                                                                                                                                                                                                                                                                                                                                                                                                                                            docker-elk_elasticsearch_1
366c97908be4   ros                                  "/ros_entrypoint.sh …"   8 weeks ago    Exited (0) 8 weeks ago                                                                                                                                                                                                                                                                                                                                                                                                                                              happy_cannon
e9f939231e20   ros                                  "/ros_entrypoint.sh …"   8 weeks ago    Exited (0) 8 weeks ago                                                                                                                                                                                                                                                                                                                                                                                                                                              determined_tharp
ceb80faaac46   sonarqube:latest                     "/opt/sonarqube/dock…"   5 months ago   Exited (255) 5 months ago   0.0.0.0:9000->9000/tcp, :::9000->9000/tcp                                                                                                                                                                                                                                                                                                                                                                                               sonarqube
0872836bf3d6   soxoj/maigret:latest                 "maigret atinysunlig…"   6 months ago   Exited (0) 6 months ago                                                                                                                                                                                                                                                                                                                                                                                                                                             bold_gauss
f2f9b3fa2157   soxoj/maigret:latest                 "maigret obroten54 -…"   6 months ago   Exited (0) 6 months ago                                                                                                                                                                                                                                                                                                                                                                                                                                             upbeat_knuth
cf8f0a4ad7b2   devilbox/mysql:mariadb-10.6-0.15     "/docker-entrypoint.…"   6 months ago   Exited (0) 6 months ago                                                                                                                                                                                                                                                                                                                                                                                                                                             devilbox-mysql-1
6aa00b4aa0de   postgres:14-alpine                   "docker-entrypoint.s…"   6 months ago   Exited (0) 6 months ago                                                                                                                                                                                                                                                                                                                                                                                                                                             devilbox-pgsql-1
4d2989a20032   mongo:5.0                            "docker-entrypoint.s…"   6 months ago   Exited (0) 6 months ago                                                                                                                                                                                                                                                                                                                                                                                                                                             devilbox-mongo-1
c4321c6e8efe   memcached:1.6-alpine                 "docker-entrypoint.s…"   6 months ago   Exited (0) 6 months ago                                                                                                                                                                                                                                                                                                                                                                                                                                             devilbox-memcd-1
701947f1d1d2   redis:6.2-alpine                     "docker-entrypoint.s…"   6 months ago   Exited (0) 6 months ago                                                                                                                                                                                                                                                                                                                                                                                                                                             devilbox-redis-1
9c5eba3dcb9f   devilbox/nginx-stable:alpine-0.47    "/docker-entrypoint.…"   6 months ago   Exited (0) 6 months ago                                                                                                                                                                                                                                                                                                                                                                                                                                             devilbox-httpd-1
87874689b473   devilbox/php-fpm:7.4-work-0.139      "/docker-entrypoint.…"   6 months ago   Exited (0) 6 months ago                                                                                                                                                                                                                                                                                                                                                                                                                                             devilbox-php-1
7d6f213938bd   cytopia/bind:alpine-0.28             "/docker-entrypoint.…"   7 months ago   Exited (0) 6 months ago                                                                                                                                                                                                                                                                                                                                                                                                                                             devilbox-bind-1

```

### 2. Pull Latest Ubuntu Image:

To pull the latest Ubuntu image from the Docker registry:

```bash
docker pull ubuntu:latest
```

### 3. Run Container:

To run a container using the Ubuntu image:

```bash
docker run -it --name my_ubuntu_container ubuntu:latest /bin/bash
```

Explanation:
- The `-it` flag allows to run the container in interactive mode, which allows to interact with the shell.
- `--name my_ubuntu_container` gives a name "my_ubuntu_container" to the running container for easy identification.
- `ubuntu:latest` specifies the image to use.
- `/bin/bash` indicates the command to run within the container (in this case, the Bash shell).

### 4. Remove Image:

To attempt to remove the Ubuntu image that pulled earlier:

```bash
docker rmi ubuntu:latest
```

Outcome:
```
Error response from daemon: conflict: unable to delete ubuntu:latest (cannot be forced) - image has dependent child images
```

Explanation:
The output shows an error because I cannot remove the image "ubuntu:latest" directly since it has dependent child images or running containers. To remove the image, I need to first stop and remove any containers based on it using the `docker rm` command. Once all containers that depend on the image are removed, I can then use the `docker rmi` command to remove the image itself.