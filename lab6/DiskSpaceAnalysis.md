# Introduction to DevOps Lab6
**Leonid Zelenskiy** <br>
**B21-CS-01** <br>
*l.zelenskiy@innopolis.university*

## Analyze Disk Space:
**Command**: `df -H` <br>
**Output**: <br>

| Filesystem | Size | Used | Avail | Use% | Mounted on |
|------------|------|------|-------|------|------------|
| tmpfs      | 816M | 2,4M | 814M |  1% | /run | <br>
| /dev/sda2  | 158G |  39G | 112G | 26% | / | <br>
| tmpfs      | 4,1G | 6,2M | 4,1G |  1% | /dev/shm |<br>
| tmpfs      | 5,3M | 4,1k | 5,3M |  1% | /run/lock |<br>
| /dev/nvme0n1p2 | 101M |  33M |  69M | 33% | /boot/efi |<br>
| tmpfs          | 816M | 152k | 816M |  1% | /run/user/1000 |<br>

## Inodes Analysis:
**Command**: `df -i` <br>
**Output**: <br>

|Filesystem|Inodes|IUsed|IFree|IUse%|Mounted on|
|----------|------|-----|-----|-----|----------|
|tmpfs          | 995594|   1370 | 994224|   1% |/run|
|/dev/sda2     | 9830400| 288640| 9541760 |   3% |/|
|tmpfs        |   995594|     29|  995565  |  1% |/dev/shm|
|tmpfs       |    995594|      4|  995590  |  1% |/run/lock|
|/dev/nvme0n1p2 |      0 |     0 |      0 |    - |/boot/efi|
|tmpfs|           199118 |  163 | 198955  |  1% |/run/user/1000|

## Resource Analysis:
**Command**: `ps aux --sort=-%mem | head` <br>
**Output**: 

|USER|PID|%CPU|%MEM|VSZ|RSS|TTY|STAT|START|TIME|COMMAND|
|----|---|----|----|---|---|---|----|-----|----|-------|
|ramprin    | 3684| 14.9  |7.0| 13309356| 563712|?|     Sl |  17:05 | 22:55| /snap/firefox/2880/usr/lib/firefox/firefox|
|ramprin   |  3359|  1.1 | 6.0 |1872496 |482656 |?|     Sl |  17:03 |  1:46 |/home/ramprin/Desktop/Telegram --|
|ramprin  |   1868|  3.3|  3.7 |5869988 |298588 |?|      Ssl | 16:56 |  5:25| /usr/bin/gnome-shell|

**Command**: `ps aux --sort=-%cpu | head` <br>
**Output**: 

|USER|PID|%CPU|%MEM|VSZ|RSS|TTY|STAT|START|TIME|COMMAND|
|----|---|----|----|---|---|---|----|-----|----|-------|
|ramprin   |  3684 |14.6 | 6.9|13308704 |549632 |? |    Sl  | 17:05 | 22:58 |/snap/firefox/2880/usr/lib/firefox/firefox|
|ramprin   |  4567 |12.8 | 1.3 |705552| 104768 |?  |     Sl  | 17:05 | 20:11 |/snap/firefox/2880/usr/lib/firefox/firefox -contentproc|
|ramprin    | 4266 |12.6 | 6.4| 3112560 |515408 |?  |    Sl  | 17:05 | 19:50 |/snap/firefox/2880/usr/lib/firefox/firefox -contentproc -childID 4|


