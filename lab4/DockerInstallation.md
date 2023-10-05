## Installation Process

1. Install Docker:
   - Open a terminal.
   - Use the appropriate command to install Docker using pip. In this case, pip is used to install Docker on your system.
     ```console
     pip install docker
     ```
   - And the output is:
     ```console
     Successfully installed charset-normalizer-3.3.0 docker-6.1.3 packaging-23.2 requests-2.31.0 urllib3-2.0.6 websocket-client-1.6.3
     ```

2. Install Docker Compose:
   - Open a terminal.
   - Use the appropriate command to install Docker Compose using pip. 
     ```console
     pip install docker-compose
     ```
   - And the output is:
     ```console
     Successfully installed distro-1.8.0 docker-compose-1.29.2 dockerpty-0.4.1 docopt-0.6.2 jsonschema-3.2.0 pyrsistent-0.19.3 python-dotenv-0.21.1 texttable-1.7.0 websocket-client-0.59.0
     ```

## Observations and Challenges

During the installation process, I encountered the following observations and challenges:

- One challenge I faced was ensuring that the pip package manager was up to date before installing Docker and Docker Compose. I had to upgrade pip using the command `pip install --upgrade pip` to ensure I had the latest version.

- Another observation I made was that the installation process for Docker and Docker Compose may take some time, depending on the internet connection and system specifications. It is important to be patient and allow the installation to complete.

- Additionally, I noticed that the version check may cause troubles in case of already installed docker with `apt install docker` command, because `docker --version` command accesses native Docker and produces results that are not the ones we are interested in.

## Conclusion

In conclusion, I successfully installed Docker and Docker Compose using the pip package manager. The version numbers of Docker and Docker Compose I installed are as follows:

- Docker version: 6.1.3
- Docker Compose version: 1.29.2

Throughout the installation process, I encountered some challenges, such as upgrading pip and ensuring the appropriate Docker version.