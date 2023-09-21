### 1. Description
Docker is a tool which allow us to ensure that it's containment can be launched from any machine with necessary computational resources. Thus we can easily reproduce an instance of our solution from docker image and deploy it without any additional preparations.

In addition, Docker provides en enviroment which can be experimented with no risk of damaging your own OS.

### 2. Use case
John was developing his project on lab server with a lot of dependencies and sub services. One day he was tasked to deploy his product on production server with Fedora OS. John was not expecting this since he developed his solution in Windows OS. Thus he had hard time with configuring new server for his solution. After he was done, Martin run in to his door screaming "YOU BLOWED MY DB BY REINSTALLING IT". The only DB with customer data was totalled and John got fired.

Usage of Docker would help John and Martin to deploy their solutions in isolated invoroments cutting deployment time and ensuring solutions' safety.
