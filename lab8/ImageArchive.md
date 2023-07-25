## 1. Create Image Archive

- Pulling the latest Ubuntu image: `docker pull ubuntu:latest`
- Create archive from the image: `docker save -o ubuntu.tar ubuntu`
- Check the archive's size: `ls -lh ubuntu.tar`
- output: `-rw-------  1 dariamiklashevskaya  staff    77M Jul 25 12:37 ubuntu.tar`
- Check the original image size: `docker image inspect --format='{{.Size}}' ubuntu`
- output: `77812686`, which is around 77.82 M

The archive's size is smaller because of gzip compression.

## 2. Run Nginx Container

- Run the containers with ports binding in detached mode: `docker run -d -p 80:80 --name nginx_container nginx`
- Verify the container is running: `docker ps -a`
- output:
<img width="871" alt="image" src="https://github.com/dariamikl/labs/assets/32385940/c94c1cac-ccb0-4b78-a132-8c22743f2605">

- Verify web-server is running on localhost: `curl localhost`
- output:
<img width="468" alt="image" src="https://github.com/dariamikl/labs/assets/32385940/aa26d6f7-b508-4479-a1d3-0e05ecd85420">

- I created the given HTML with `nano index.html` and copied it to the container with: `docker cp index.html nginx_container:/usr/share/nginx/html`
- output: `Successfully copied 2.05kB to nginx_container:/usr/share/nginx/html`

- Created a custom image my_website: `docker commit nginx_container my_website:latest`
- output: `sha256:1170c1630bb80210ecbfdc4342926ab5f8f436afa9691365f5500b4a344bd292`
- Removed the original container: `docker rm --force nginx_container`
- output: `nginx_container`
- Verified with: `docker ps -a`
- output: `CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES`
- Created a new container from custom image: `docker run -d -p 80:80 --name nginx_container my_website`
- output: `c3b1291b072f9039e7d0cb977532b50d5ce1ea8e60f220b01061cb89961189b3`
- Verify: `docker ps`
- output:
<img width="747" alt="image" src="https://github.com/dariamikl/labs/assets/32385940/9397da55-7d24-4c31-b880-45c9256ead7b">

- Test web-server: `curl 127.0.0.1:80`
- output:
<img width="345" alt="image" src="https://github.com/dariamikl/labs/assets/32385940/ad8bfaad-6191-4e61-92d7-cfc3af522d46">

- Analyze Image Changes: `docker diff nginx_container`
- output:
<img width="410" alt="image" src="https://github.com/dariamikl/labs/assets/32385940/238796ab-6119-48d8-befe-13f12d8b3c06">


It displays the changes of the directories.
