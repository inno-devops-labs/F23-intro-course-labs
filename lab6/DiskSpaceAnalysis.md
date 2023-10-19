# 1,2. Analyze Disk Space and number of inodes.
Somehow df command with _-H_ option has shown both inodes and space left.
  * run command:
    > df -H
  * output:

|Filesystem     |Size|Used|Avail|Capacity|iused |ifree     |%iused|Mounted on|
|---------------|----|----|-----|--------|------|----------|------|----------|
| /dev/disk3s1s1|494G|12G |331G |4%      |355384|3228127480|0%    |  /       |
# 3. Processes and their resource conumption
  * run command
    > ps aux
    * __*ps*__: is the process status command.
    * __*a*__: displays information about other users' processes as well as your own.
    * __*u*__: displays the processes belonging to the specified usernames.
    * __*x*__: includes processes that do not have a controlling terminal.
  * output (very long list, provided only first 2 rows):

|USER|PID |%CPU|%MEM|VSZ      |RSS   |TT  |STAT|STARTED|TIME     |COMMAND                                          |
|----|----|----|----|---------|------|----|----|-------|---------|-------------------------------------------------|
|root|8438|12,2|2,0 |411961664|333152|??  |Ss  |11сен23|879:07.70|/Applications/Kaspersky Anti-Virus For Mac.app/Co|
|_windowserver|      156|   6,1|  0,8| 411951040| 135296 |  ??|  Ss |   1янв70 |2804:18.71| /System/Library/PrivateFrameworks/SkyLight.framew
