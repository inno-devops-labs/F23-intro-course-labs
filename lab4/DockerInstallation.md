I already had Docker and docker-compose on my machine. When I need to install Docker and Docker-compose on another server, I use the instruction depending on the operating system from the official Documentation: https://docs.docker.com/engine/install/ and for docker-compose: https://docs.docker.com/compose/install/
In my case, it was the instruction for Mac OS, and I needed to download the Docker executable first in the format of .dmg. Docker-compose was installed using Docker repository https://docs.docker.com/compose/install/linux/#install-using-the-repository

Docker version command: docker -v
Output: Docker version 23.0.5, build bc4487a

Docker-compose version command: docker-compose -v
Output: docker-compose version 1.29.2, build unknown
