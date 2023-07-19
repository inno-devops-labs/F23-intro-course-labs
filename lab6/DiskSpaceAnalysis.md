# Disk Space Analysis

## Disk Space

To check available disk space one can use `df` command:

```bash
# Human-readable output
df -h 
```

Will output something like this on macOS:

```
Filesystem                                                   Size  Used Avail Use% Mounted on
/dev/disk3s3s1                                               229G  201G   29G  88% /
/dev/disk3s6                                                 229G  201G   29G  88% /System/Volumes/VM
/dev/disk3s4                                                 229G  201G   29G  88% /System/Volumes/Preboot
/dev/disk3s2                                                 229G  201G   29G  88% /System/Volumes/Update
/dev/disk1s2                                                 500M   19M  482M   4% /System/Volumes/xarts
/dev/disk1s1                                                 500M   19M  482M   4% /System/Volumes/iSCPreboot
/dev/disk1s3                                                 500M   19M  482M   4% /System/Volumes/Hardware
/dev/disk3s7                                                 229G  201G   29G  88% /nix
/Library/Application Support/PenDriver/PenTablet_Driver.app  229G  191G   38G  84% /private/var/folders/pf/_zk1lwqn20xdhx_jq54__pt80000gn/T/AppTranslocation/7A310531-BBA7-44FB-B409-094A7E3FBFAE
/Library/Application Support/PenDriver/PenTabletInfo.app     229G  191G   38G  84% /private/var/folders/pf/_zk1lwqn20xdhx_jq54__pt80000gn/T/AppTranslocation/9CE63EE5-267C-4C05-866B-BFE6FB5FACCB
/Applications/Goose Goose Duck.app/Wrapper                   229G  195G   35G  86% /private/var/folders/pf/_zk1lwqn20xdhx_jq54__pt80000gn/X/E07C01CC-D956-526E-9440-E139230CAB15
/dev/disk4s1                                                 217M  195M   23M  90% /Volumes/Hyperbeam 0.21.0
/dev/disk3s3                                                 229G  201G   29G  88% /System/Volumes/Update/mnt1
```

## Inodes Analysis

To show the number of inodes we can use the same command with the `-i` flag

```bash
df -i
```

which produces the following output on my machine:

```
Filesystem                                                      Inodes   IUsed      IFree IUse% Mounted on
/dev/disk3s3s1                                               295785902  355382  295430520    1% /
/dev/disk3s6                                                 295430522       2  295430520    1% /System/Volumes/VM
/dev/disk3s4                                                 295431357     837  295430520    1% /System/Volumes/Preboot
/dev/disk3s2                                                 295430586      66  295430520    1% /System/Volumes/Update
/dev/disk1s2                                                   4935041       1    4935040    1% /System/Volumes/xarts
/dev/disk1s1                                                   4935066      26    4935040    1% /System/Volumes/iSCPreboot
/dev/disk1s3                                                   4935091      51    4935040    1% /System/Volumes/Hardware
/dev/disk3s7                                                 296577419 1146899  295430520    1% /nix
/Library/Application Support/PenDriver/PenTablet_Driver.app  398664529 2004569  396659960    1% /private/var/folders/pf/_zk1lwqn20xdhx_jq54__pt80000gn/T/AppTranslocation/7A310531-BBA7-44FB-B409-094A7E3FBFAE
/Library/Application Support/PenDriver/PenTabletInfo.app     398661573 2004573  396657000    1% /private/var/folders/pf/_zk1lwqn20xdhx_jq54__pt80000gn/T/AppTranslocation/9CE63EE5-267C-4C05-866B-BFE6FB5FACCB
/Applications/Goose Goose Duck.app/Wrapper                   359332804 2022644  357310160    1% /private/var/folders/pf/_zk1lwqn20xdhx_jq54__pt80000gn/X/E07C01CC-D956-526E-9440-E139230CAB15
/dev/disk4s1                                                4294967279     200 4294967079    1% /Volumes/Hyperbeam 0.21.0
/dev/disk3s3                                                 295785904  355384  295430520    1% /System/Volumes/Update/mnt1
```

## Resource Consumption Analysis

> Use the appropriate command or tool to identify the process consuming the
> most RAM and CPU on your operating system.

Of course, this can be achieved with `ps` command, but I want to share
the elegance of [nushell](https://www.nushell.sh/) with the following solution:

> `ps` in nushell is the built-in command

```nu
# Show the most CPU consuming process
ps | sort-by cpu | last

# Show the most RAM consuming process
ps | sort-by mem | last
```

![output](https://github.com/metafates/uni-devops-elective/assets/62389790/ad795730-d3ae-446e-9544-d94d0ef159c0)
