# Docker Installation

I use `brew` on macOS, so to install docker & docker-compose I used

`brew install docker`

`brew install docker-compose`

## Version

```bash
docker --version
    > Docker version 24.0.2, build cb74dfcd85
```

```bash
docker-compose --version
    > Docker Compose version 2.19.0
```

## Challanges

Well, I faced no problems with installation. However, I can describe my problem with
using docker in practise.

My problem is creating volumes in docker. For example, I'd like to run image of 
`postgres`. And mount volume in my project like this ./db:/usr/data/:rw. 
And typically I have `permission denied`. After some research I found that
usually docker machine uses user with id=1, when propably in macOS default value is 1000.