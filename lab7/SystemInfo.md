# System Info

## VM Deployment

Since VirtualBox isn't availble for arm based macOS I used [UTM](https://mac.getutm.app/)
for that purpose.

I installed pre-made debian image from the [UTM Gallery](https://mac.getutm.app/gallery/debian-10-4-i3)
so the process was trivial.

# System information

```bash
# CPU information
lscpu

# RAM
free -m

# Network
ip -a
```

I'm not really sure what "operating system specifications" means exactly,
but I suppose hardware overview will suffice.

For that we can use [`inxi`](https://github.com/smxi/inxi) command.

```bash
inxi -Fxz
```

The `-F` flag means you'll get full output, `-x` adds details, and `-z` masks
out personally identifying information like MAC and IP addresses.
