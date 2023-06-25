# Docker Installation

## Docker Installation Steps 
Since operating system on my laptop is Windows. I can share the steps for installation on windows.

1. **Check System Requirements:**
   - Verify that your Windows version is Windows 10 or higher.

2. **Enable the Windows Subsystem for Linux:**
   - Open PowerShell as an administrator.
   
   - Run the following command:
   	  wsl --install
   
   - This command will enable the necessary Windows features and prompt for a system restart. Proceed with the restart.

2. **Update WSL 2 Linux Kernel:**
   - Open a browser and visit the following page: https://aka.ms/wsl2kernel 
   - Download and install the latest WSL 2 Linux kernel update package for your Windows version.

3. **Install a Linux Distribution:**
   - Open the Microsoft Store application.
   - Search for your preferred Linux distribution (e.g., Ubuntu, Debian, or CentOS) and select it.
   - Click on the `Install` button to download and install the Linux distribution.
 

4. **Configure and Launch Linux Distribution:**
   - Launch the installed Linux distribution from the Start menu or using the command `wsl`.
   - On the first launch, you will need to configure a username and password for your Linux distribution.

### Docker version
I have `KALI LINUX` as linux distribution and docker version is `Docker version 24.0.2`

## Docker Compose

First thing first, we have to make sure that docker is sucessfully installed.

1. **Check Docker Compose Releases:** 
Visit the Docker Compose GitHub releases page to find the latest version of Docker Compose: https://github.com/docker/compose/releases 

2. **Download Docker Compose Binary:**
Scroll down to the `Assets` section on the Docker Compose GitHub releases page. Under the Windows section, download the latest version of the `docker-compose.exe`.

3. **Place Docker Compose Binary in Path:** 
Once the `docker-compose.exe` binary is downloaded, move it to a directory that is included in your system's PATH environment variable. This allows you to run Docker Compose from PowerShell window.

   A common location to place the `docker-compose.exe` binary is the `C:\Program Files\Docker` directory. You can create this directory if it doesn't exist and copy the `docker-compose.exe` file into it.

4. **Verify Installation:** 
Open a new PowerShell window and run the following command to verify that Docker Compose is installed.
   `docker-compose version`


