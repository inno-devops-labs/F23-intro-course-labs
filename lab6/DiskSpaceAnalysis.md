# Disc Space Analysis

## Note

I used Ubuntu Virtual Machine for this lab, because I cannot check inodes usage on Windows.

## Disk Space

```bash
df -h --total
```

My result:
![alt text](https://i.ibb.co/CQ15Dw7/memory.png)

## Inodes

```bash
df -i
```

My result:
![alt text](https://i.ibb.co/K05YZyj/inodes.png)

## Resource Consumption

To get updating detailed information about processes:

```bash
top
```

My result:
![alt text](https://i.ibb.co/zHsXhfY/top.png)
To get less information:
RAM:

```bash
free -h
```

CPU in percents where 100% is one core:

```bash
top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}'
```

My result:
![alt text](https://i.ibb.co/jvrGM6D/cpuram.png)
