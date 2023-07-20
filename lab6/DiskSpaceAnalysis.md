# Report - Disk Space Analysis

1. Analyze Disk Space: I used command "wmic logicaldisk get caption, freespace" to find value of vailable disk space on my Windows 10. on virtual ubuntu I can do that using "df -h" command.
     - Output Windows: ![windows_output](https://github.com/MinusOne-1/DevOps_labs/blob/lab6_solution/lab6/DiskSpaceAnalysis_images/t1_p1_win_out.png)
     - Output Ubuntu: ![ubuntu_output](https://github.com/MinusOne-1/DevOps_labs/blob/lab6_solution/lab6/DiskSpaceAnalysis_images/t1_p1_ubuntu_out.png)

2. Inodes Analysis: Windows-base machine don't have i-nodes concept, so I used virtual machine based on Ubuntu for this point. To check number of i-nodes in ubuntu I used command "df -i"
    - Output Ubuntu: ![ubuntu_output](https://github.com/MinusOne-1/DevOps_labs/blob/lab6_solution/lab6/DiskSpaceAnalysis_images/t1_p2_ubuntu_out.png)
3. Resource Consumption Analysis: on Windows I used "Task Manage" to identify the process consuming the most RAM and CPU on your operating system. and on ubuntu there is the "top" command, which will display a real-time dynamic view of system processes sorted by CPU usage by default.
     - Output Windows: ![windows_output_cpu](https://github.com/MinusOne-1/DevOps_labs/blob/lab6_solution/lab6/DiskSpaceAnalysis_images/t1_p3_win_out.png) ![windows_output_ram](https://github.com/MinusOne-1/DevOps_labs/blob/lab6_solution/lab6/DiskSpaceAnalysis_images/t1_p3_win_out_2.png)
     - Output Ubuntu: ![ubuntu_output](https://github.com/MinusOne-1/DevOps_labs/blob/lab6_solution/lab6/DiskSpaceAnalysis_images/t1_p3_ubuntu_out.png)

