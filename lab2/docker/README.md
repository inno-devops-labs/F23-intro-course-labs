# Docker 🐳

[Website](https://www.docker.com/)

Application containerizator based on [Moby Framework](https://mobyproject.org/).

## Purpose and benefits of the tool in the DevOps context

Docker ensures that the application functions the same way across all
environments by offering developers, testers, and operations teams a consistent environment.

## Key features and functionalities

- Applications and their dependencies are packaged into isolated, lightweight containers so they may execute reliably in various contexts.
- Offers a built-in networking framework that enables communication between containers and external networks.

## Use cases and examples of how the tool is used in real-world scenarios

Need to configure several different services running on the same machine.
For example, file hosting with [syncthing](https://syncthing.net/), passwords vault with [bitwarden](https://bitwarden.com/)
and media server with [jellyfin](https://jellyfin.org/).

Dealing with ports, storage and overall configuration manually can be painful,
so we can use these services as containers running configured from a `docker-compose.yml` file.

After that, we can just run `docker compose up` and everything will work automagically.
