# Image and Container Operations

## Create Image Archive
- Pull image then archive it using `docker save ubuntu:latest | gzip > ~/Documents/ubuntu.tar.gz`
- Then get size of docker images using `docker images --format '{{.Repository}}:{{.Tag}}        {{.Size}}'`
- Then Get size of created archive using `du -sh ~/Documents/ubuntu.tar.gz`

```
ezpzbaby@Bekzhans-MBP DevOPS23-labs % docker pull ubuntu:latest
latest: Pulling from library/ubuntu
3153aa388d02: Pull complete 
Digest: sha256:0bced47fffa3361afa981854fcabcd4577cd43cebbb808cea2b1f33a3dd7f508
Status: Downloaded newer image for ubuntu:latest
docker.io/library/ubuntu:latest

What's Next?
  View summary of image vulnerabilities and recommendations → docker scout quickview ubuntu:latest

ezpzbaby@Bekzhans-MBP DevOPS23-labs % docker save ubuntu:latest | gzip > ~/Documents/ubuntu.tar.gz

ezpzbaby@Bekzhans-MBP DevOPS23-labs % docker images --format '{{.Repository}}:{{.Tag}}        {{.Size}}'
ubuntu:latest        77.8MB

ezpzbaby@Bekzhans-MBP DevOPS23-labs % du -sh ~/Documents/ubuntu.tar.gz
 29M	/Users/ezpzbaby/Documents/ubuntu.tar.gz
```
 
Initial image was 77.8MB and resulting archive is 29MB.

## Run Nginx Container
- Pull nginx
- Then run using `docker run -d -p 80:80 --name nginx_container nginx`

```
ezpzbaby@Bekzhans-MBP DevOPS23-labs % docker pull nginx 
Using default tag: latest
latest: Pulling from library/nginx
faef57eae888: Pull complete 
76579e9ed380: Pull complete 
cf707e233955: Pull complete 
91bb7937700d: Pull complete 
4b962717ba55: Pull complete 
f46d7b05649a: Pull complete 
103501419a0a: Pull complete 
Digest: sha256:08bc36ad52474e528cc1ea3426b5e3f4bad8a130318e3140d6cfe29c8892c7ef
Status: Downloaded newer image for nginx:latest
docker.io/library/nginx:latest

What's Next?
  View summary of image vulnerabilities and recommendations → docker scout quickview nginx

ezpzbaby@Bekzhans-MBP DevOPS23-labs % docker run -d -p 80:80 --name nginx_container nginx
cfba284347098baa2a91b780c9888a621f42a0343a2352972b4b1f4e03012e95
```

Now nginx web server is running and available at `localhost:80`

Created `index.html`

Now need to commit it
`docker cp index.html cfba284347098baa2a91b780c9888a621f42a0343a2352972b4b1f4e03012e95:/usr/share/nginx/html/index.html`
`docker commit nginx_container`
```
ezpzbaby@Bekzhans-MBP lab_8 % docker cp index.html cfba284347098baa2a91b780c9888a621f42a0343a2352972b4b1f4e03012e95:/usr/share/nginx/html/index.html
Successfully copied 2.05kB to cfba284347098baa2a91b780c9888a621f42a0343a2352972b4b1f4e03012e95:/usr/share/nginx/html/index.html

ezpzbaby@Bekzhans-MBP lab_8 % docker commit nginx_container
sha256:c846dfa52c82dee169c4b0dfaf4c958d4fa3b514d22239abccd5eaa1e3efe325
```

- Now need to tag this image using `docker tag c846dfa52c82dee169c4b0dfaf4c958d4fa3b514d22239abccd5eaa1e3efe325 my_website`
- Then stop and delete nginx_container
- Then run custom image
```
ezpzbaby@Bekzhans-MBP lab_8 % docker tag c846dfa52c82dee169c4b0dfaf4c958d4fa3b514d22239abccd5eaa1e3efe325 my_website

ezpzbaby@Bekzhans-MBP lab_8 % docker stop nginx_container
nginx_container

ezpzbaby@Bekzhans-MBP lab_8 % docker rm nginx_container
nginx_container

ezpzbaby@Bekzhans-MBP lab_8 % docker run -d -p 80:80 --name nginx_container my_website
b84242ebd3451d0b22b7f2c3b226e6f28f10a6195427616c1ab0004dca87f843
```

- Now fetch localhost using `curl 127.0.0.1:80`
```
ezpzbaby@Bekzhans-MBP lab_8 % curl 127.0.0.1:80
<html>
<head>
<title>The best</title>
</head>
<body>
<h1>website</h1>
</body>
</html>
```

- To see difference use `docker diff nginx_container`
```
ezpzbaby@Bekzhans-MBP lab_8 % docker diff nginx_container
C /run
C /run/nginx.pid
C /etc
C /etc/nginx
C /etc/nginx/conf.d
C /etc/nginx/conf.d/default.conf
```

Directories are changed


