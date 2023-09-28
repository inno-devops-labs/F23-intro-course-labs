
# Task-2:

## Install Docker and Docker Compose:

* First i created a separte virtualenvironment and then installed the `docker` and `docker-compose` utilities

### Install Docker:

1. Installed docker using ```pip install docker``` in a separate pip environment.

2. Checked version using ```docker --version``` and got `Docker version 24.0.2, build cb74dfc`

### Install Docker Compose:

1. Installed docker using ```pip install docker-compose``` in a separate pip environment.

2. Checked version using ```docker-compose --version``` and got `docker-compose version 1.29.2` version.

### Observations:

1. There was no problem installing `docker`. It was pretty smooth.

2. Installation of `docker-compose` was also smooth but i ran into issue when ran `docker-compose --version`. The error was about some permissions, so i had to run `chmod a+rx $(which docker-compose)` to fix it.
