## System Info



### CPU, RAM, Network
I decided to use `atop`

Using command: `sudo apt install atop`

It is usefull to get system information such as CPU, RAM, Network with only one command `atop`

However, it did not work from the first try. I got error `Unable to locate package atop`. Then started to search for solution.
I have ubuntu code name `jammy` and release `22.04`.

`atop` is available only for `universe` repository

Hence I had to run `sudo add-apt-repository universe multiverse`

Then it wokred

![Alt text](<img/Screenshot 2023-07-18 at 11.37.06 AM.png>)


### Operating System Specification
Found following command: `lsb_release -a`

![Alt text](<img/Screenshot 2023-07-18 at 11.37.28 AM.png>)











