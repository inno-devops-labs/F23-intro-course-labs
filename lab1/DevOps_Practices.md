# Main DevOps practices
## Communication and collaboration
One of the main principles of DevOps is extensive communication between Development and Operation parts of the team, as it allows to streamline the process between release of an artifact and its deployment. Enhanced communication also provides means to propagate feedback towards development team faster, allowing for timely bugfixes.

## Continous Integration
Another important practice in DevOps is Continous integration (CI), which implies versions of a software product being built and tested reguraly (usually daily). CI allows developers to find bugs and mistakes in code as early as possible and adjust their plans accordingly. To make CI vialble, a team needs acces to a Version control system, which is considered to be one of the main DevOps tools.

## Continous Delivery
Continous Delievery (CD) is another DevOps approach. It implies that the lastest version of the software is always ready to be released to the production-like environment.

## Automation
To ensure the maximum efficiency of CI and CD practices, DevOps requires high levels of automation of Integraiton, Testing and Deployment stages. This usually means full automation of building from repositories and unit-tests, as well as automated deployment to producion enviroment.

## Infrastructure as code
To allow for broad automation of development process, in DevOps, configs, secrets and other non-code artifacts are stored in repositories, sometimes along the code itself. This allows tracking of changes to those data and its effective use in build and deployment.