# Student Information
Name: Md Motasim Bhuiyan

Email: m.bhuiyan@innopolis.university

Group: BS21-CS-01

# Processor, Ram and Network Information
For processor information, `lscpu` command can be used. It was already available in the system.
```bash
$ lscpu
```
![lscpu](https://i.postimg.cc/G23DY1kc/image.png)


For RAM (and SWAP) information, `free` command can be used. It was already available in the system.
```bash
$ free -h
```
![free](https://i.postimg.cc/mZzNBCyV/image.png)

For network information, `ifconfig` and `ip` were is used. `ifconfig` was not available in the system. So, I installed it using `sudo apt install net-tools`. 
```bash
$ ifconfig
```
![ifconfig](https://i.postimg.cc/9fCJf0Q0/image.png)
`ip` was already available in the system.
```bash
$ ip addr
```
![ip](https://i.postimg.cc/DzcFWSQM/image.png)

# OS Information
I found 2 tools to do this. One is `uname` which is already available in the system. Other one is `neofetch` that I installed using `sudo apt install neofetch`. The following commands were used to see the information-

```bash
$ uname -a
$ neofetch
```

The output screenshot is given below-
![OS Information](https://i.postimg.cc/Y9wJpdBK/image.png)
