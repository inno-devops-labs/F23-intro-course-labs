# Installing Docker and Docker Compose

## Installing Docker

1. **Installation via pip**:
   ```bash
   pip3 install docker
   ```
   
2. **Check Docker version**:
   ```py
    python3
    import docker
    print(docker.__version__)
    ```
    > 6.1.3

## Installing Docker Compose

1. **Installation via pip**:
   ```bash
   pip3 install docker-compose
   ```

2. **Check Docker Compose version**:
   ```bash
   docker-compose --version
   ```
    > docker-compose version 1.29.2, build unknown
    
## Observations and Challenges

- Installing Docker and Docker Compose via pip is not the standard approach. They are typically installed using platform-specific methods or from their official websites.
- Using pip might install Python client libraries for Docker and Docker Compose rather than the actual tools.
- It's essential to follow the official installation guides from Docker's official website to ensure a proper setup.