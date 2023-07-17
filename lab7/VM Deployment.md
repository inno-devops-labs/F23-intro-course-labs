#  VM Deployment

### VirtualBox Version
Virtualbox 7.0.8 r156879 (Qt5.15.2)

### Deploy a Virtual Machine
We will walk through the process of deploying virtual machine on Windows environment. 
- Open VirtualBox
- Click on the "New" button in the middle of the Virtual machine to create a new virtual machine.
- On pop-up windows fill the information like name of virtual machine and select the folder where you prefer to install the VM.
- Select Type of operating system and its version you want to install
- Allocate memory for the VM. For Ubuntu, it's recommended to have at least 2 GB of RAM. You can adjust this value depending on your system resources.
- You can create a virtual disk and provide with the space depending on your system resources.

### Configure VM
- Select the newly created VM from the left pane in VirtualBox
- Select the setting button to see the current configuration
- In the "Processor" tab, enable "PAE/NX" if your host system supports it.
- Increase the video memory to improve performance if you have Graphic card installed.
