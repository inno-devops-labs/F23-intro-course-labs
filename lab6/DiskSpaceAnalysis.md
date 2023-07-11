# Operating System Analysis

### Analyze Disk Space (MacOS)
`df -h`

```
ezpzbaby@Bekzhans-MBP ~ % df -h
Filesystem       Size   Used  Avail Capacity iused     ifree %iused  Mounted on
/dev/disk1s1s1  113Gi  8.5Gi   18Gi    32%  356093 189892880    0%   /
devfs           190Ki  190Ki    0Bi   100%     658         0  100%   /dev
/dev/disk1s2    113Gi  1.7Gi   18Gi     9%    1321 189892880    0%   /System/Volumes/Preboot
/dev/disk1s4    113Gi  4.0Gi   18Gi    19%       5 189892880    0%   /System/Volumes/VM
/dev/disk1s8    113Gi  7.3Mi   18Gi     1%      18 189892880    0%   /System/Volumes/Update
/dev/disk1s5    113Gi   79Gi   18Gi    82% 2523840 189892880    1%   /System/Volumes/Data
map auto_home     0Bi    0Bi    0Bi   100%       0         0  100%   /System/Volumes/Data/home
```


---
---
---


### Inodes Analysis
`> df -i`

```
ezpzbaby@Bekzhans-MBP ~ % df -i
Filesystem     512-blocks      Used Available Capacity iused     ifree %iused  Mounted on
/dev/disk1s1s1  236363688  17722696  37980360    32%  356093 189901800    0%   /
devfs                 381       381         0   100%     660         0  100%   /dev
/dev/disk1s2    236363688   3669536  37980360     9%    1321 189901800    0%   /System/Volumes/Preboot
/dev/disk1s4    236363688   8391200  37980360    19%       5 189901800    0%   /System/Volumes/VM
/dev/disk1s8    236363688     13584  37980360     1%      18 189901800    0%   /System/Volumes/Update
/dev/disk1s5    236363688 166105224  37980360    82% 2523912 189901800    1%   /System/Volumes/Data
map auto_home           0         0         0   100%       0         0  100%   /System/Volumes/Data/home
```


---
---
---


### Resource Consumption Analysis
`> top` 

![Alt text](<Screenshot 2023-07-11 at 10.54.55 AM.png>)

It is sorted by the load on the `CPU` and updating every 2-3 sec

And most of the processes are on `sleeping` state