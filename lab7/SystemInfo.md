### Processor info:
- tool/command used: `lscpu`
- no additional installation needed, built-in
- output:
<img width="572" alt="image" src="https://github.com/dariamikl/labs/assets/32385940/705fc7c0-a503-4b58-9a68-b93385ae00be">

### RAM info:
- tool: lshw
- command used: `sudo lshw -c memory`
- output:
<img width="376" alt="image" src="https://github.com/dariamikl/labs/assets/32385940/7900cb1e-b714-4122-831f-220ad0254417">

- the size (3GiB) is the same that I've set up for the VM, so it is correct
- also a built-in tool provides info about memory usage with command `free -m`:
<img width="370" alt="image" src="https://github.com/dariamikl/labs/assets/32385940/62422fd9-d1d6-4a26-adc8-ae622716c4cc">

### Network info:
- installed network-related tools with: `sudo apt install net-tools`
- network interfaces config with command `ifconfig`:
<img width="341" alt="image" src="https://github.com/dariamikl/labs/assets/32385940/56b6de13-9062-4c78-acee-a696ae6e7eb3">

- netstat command also shows network-related information, such as:
  - `netstat -r` for displaying routing table
  - `netstat -i` for displating interfaces table
  - `netstat -l` for displaying listening server sockets
  - screenshot:
<img width="493" alt="image" src="https://github.com/dariamikl/labs/assets/32385940/1c9a52f6-1468-4b1f-9b15-c7831b6e061b">

### Operating System specs:
- `lsb_release -a` provides information about the distribution
- `uname -a` provides info about the Linux kernel
- screenshot:
<img width="578" alt="image" src="https://github.com/dariamikl/labs/assets/32385940/bd5b81b5-0d63-4a80-a301-3cb03973e321">
