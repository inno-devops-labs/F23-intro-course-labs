### 1. Analyze Disk Space:

To check whether the disk usage, let's write a script in Python using the <b>shutil</b> library.</br>
<b>Code:</br></b>
import shutil </br>
total, used, free = shutil.disk_usage("/")</br>

print("Total: %d GiB" % (total // (2**30)))</br>

print("Used: %d GiB" % (used // (2**30)))</br>

print("Free: %d GiB" % (free // (2**30)))</br>

<b>Output:</br></b>
Total: 46 GiB</br>
Used: 30 GiB</br>
Free: 13 GiB</br>

The free variable is responsible for available disk space <b>13 GiB</b>. The rather small disk space is due to the fact that the system is installed on an external SSD drive, divided into 2 parts.

### 2. Inodes Analysis:

The <b>df -i</b> command displays information about your file system's inode usage. his option prints out a list showing all available partitions, their size, used space, available space, and most importantly, total number of inodes. To use this command for getting total inodes on root partition 

<b>Command:</b></br>
<b>$ sudo df -i / </b></br>

<b>Output:</b></br>
| Filesystem | Inodes | IUsed | IFree | IUse% | Mounted on |
|----------|:-------------:|------:|------|------|:------:|
| /dev/sda4 | 3098704 | 657029 | 2441675 |   22% | /|

### 3. Resource Consumption Analysis:

Following command will show the list of top processes ordered by RAM and CPU use in descendant form:

<b>Command:</b></br>
<b>ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head </b></br>

<b>Output:</br></b>

|    PID |    PPID | CMD |                         %MEM |  %CPU |
| --- | --- | --- | --- | --- |
|   2231 |   1648 | telegram-desktop --          |5.5  |1.9|
|   3263 |   1163 | /usr/lib/firefox/firefox -n  | 3.1 |11.4|
|   1648 |   1163 | /usr/bin/gnome-shell         |2.0  |3.6|
|   2781 |   2738 | /snap/code/142/usr/share/co  |1.8  |7.9|
|   3697 |   3263 | /usr/lib/firefox/firefox -c  |1.4  |0.6|
|   1180 |   1178 | /usr/lib/xorg/Xorg vt2 -dis  |1.1  |3.9|
|   3576 |   3263 | /usr/lib/firefox/firefox -c  |1.1  |1.1|
|   2733 |   1163 | /snap/code/142/usr/share/co  |1.1  |2.1|
|   2763 |   2733 | /snap/code/142/usr/share/co  |1.1  |1.8|
