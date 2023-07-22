# System Info

## VM Deployment

Since VirtualBox isn't availble for arm based macOS I used [UTM](https://mac.getutm.app/)
for that purpose.

I installed pre-made debian image from the [UTM Gallery](https://mac.getutm.app/gallery/debian-10-4-i3)
so the process was trivial.

<img width="612" alt="Screenshot 2023-07-22 at 13 02 14" src="https://github.com/metafates/uni-devops-elective/assets/62389790/d4486cf0-7a77-4b9b-9d82-89a47906dce2">

# System information

```bash
# CPU information
lscpu

# RAM
free -m

# Network
ip -a
```

<img width="1247" alt="Screenshot 2023-07-22 at 13 06 18" src="https://github.com/metafates/uni-devops-elective/assets/62389790/3310ff6c-ed97-40a1-9246-91e0dbcb6bea">

I'm not really sure what "operating system specifications" means exactly,
but I suppose hardware overview will suffice.

For that we can use [`inxi`](https://github.com/smxi/inxi) command.

```bash
inxi -Fxz
```

The `-F` flag means you'll get full output, `-x` adds details, and `-z` masks
out personally identifying information like MAC and IP addresses.

![Screenshot 2023-07-22 at 13 09 59](https://github.com/metafates/uni-devops-elective/assets/62389790/a3b1fccb-b50c-4256-aa36-1797a26c59ca)

