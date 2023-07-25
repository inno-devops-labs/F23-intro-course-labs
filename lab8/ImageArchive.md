## Task 2: Image and Container Operations

1. Create Image Archive:

Pull latest ubuntu image:
**`docker pull ubuntu:latest`**
```
latest: Pulling from library/ubuntu
5af00eab9784: Pull complete
Digest: sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
Status: Downloaded newer image for ubuntu:latest
docker.io/library/ubuntu:latest
```
Create archive from it:
**`docker save ubuntu:latest | gzip > ~/Documents/ubuntu.tar.gz`**

Get size of docker images:

**`docker images --format '{{.Repository}}:{{.Tag}}        {{.Size}}'`**
```
grafana/grafana:latest	317MB
nginx:latest	192MB
ubuntu:latest	69.2MB
apache/nifi:latest	1.91GB
gitlab/gitlab-ce:latest	2.96GB
timescale/timescaledb-ha:pg14-latest	2.87GB
postgres:latest	357MB
```
Get size of created archive:
**`du -sh ~/Documents/ubuntu.tar.gz`**
```
26M	/Users/tihomir/Documents/ubuntu.tar.gz
```
As you can see, initial image was 69MB and resulting archive is 26MB.

2. Run Nginx Container:

**`docker pull nginx`**
```
Using default tag: latest
latest: Pulling from library/nginx
Digest: sha256:08bc36ad52474e528cc1ea3426b5e3f4bad8a130318e3140d6cfe29c8892c7ef
Status: Image is up to date for nginx:latest
docker.io/library/nginx:latest
```

**`docker run -d -p 80:80 --name nginx_container nginx`**
```
270e5598766a1b3a5261d17df0c347e96837dedd11ff1213fb51ebbd510daf04
```
Web server is running and available at localhost:80.

`touch index.html`

`vim index.html`

`docker cp index.html 270e5598766a1b3a5261d17df0c347e96837dedd11ff1213fb51ebbd510daf04:/usr/share/nginx/html/index.html`

`docker commit nginx_container`
```
sha256:b2e3417d1cb20a2c852ed043112d7ee32ca1e5ef2beb8f47dd48b8b8c6916ca6
```

`docker tag b2e3417d1cb20a2c852ed043112d7ee32ca1e5ef2beb8f47dd48b8b8c6916ca6 my_website`

`docker stop nginx_container`
`docker rm nginx_container`

`docker run -d -p 80:80 --name nginx_container my_website`
```
c9906d9ac7925f34e45d747eef009bce3a72521795fdfb6172680a79820e03f0
```

`curl 127.0.0.1:80`
```html
<html>
<head>
<title>The best</title>
</head>
<body>
<h1>website</h1>
</body>
</html>
```

`docker diff` is used to analyze changes in containers, so we will test it on our new container:

`docker diff nginx_container`
```
C /etc
C /etc/nginx
C /etc/nginx/conf.d
C /etc/nginx/conf.d/default.conf
C /run
C /run/nginx.pid
```
As you can see, we have changed directories.