# Docker Installation

## Installation Steps

1. **Install Docker**:

   Command:
   ```bash
   pip install docker
   ```
   Output:
   ```bash
   Defaulting to user installation because normal site-packages is not writeable
   Requirement already satisfied: docker in /usr/lib/python3/dist-packages (5.0.3)
   ```

2. **Verify Docker Installation**:

    Command:
    ```bash
    docker --version
    ```
    Output:
    ```bash
    Docker version 20.10.24+dfsg1, build 297e128
    ```

3. **Install Docker Compose**:

    Command:
    ```bash
    pip install docker-compose
    ```
    Output:
    ```bash
    Defaulting to user installation because normal site-packages is not writeable
    Requirement already satisfied: docker-compose in /usr/lib/python3/dist-packages (1.29.2)
    ```

4. **Verify Docker Compose Installation**:

    Command:
    ```bash
    docker-compose --version
    ```
    Output:
    ```bash
    docker-compose version 1.29.2, build unknown
    ```


## Installed Versions

- Docker version: `20.10.24+dfsg1`
- Docker Compose version: `1.29.2`


## Observations

1. System Compatibility: Ensure that your system meets the requirements for running Docker and Docker Compose.

2. Pip Installation: Confirm that pip is installed on your system before proceeding with Docker and Docker Compose installation.

3. Internet Connectivity: Maintain a stable internet connection throughout the installation process to avoid interruptions.

4. Permissions: Be aware of potential permission-related issues during installation, and consider running commands with appropriate privileges.