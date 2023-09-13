# DevOps

DevOps is an acronym for development and operations. It was formed to bridge the gap between the development and operations teams. Along with development and operations it also aims at merging the quality assurance into a single set of processes using various principles and practices.

<!-- ## Principles and Practices

devops
speeds up deployment by
introducing
1. Higher speeds and quality of product deployment
- continuous delivery
- encouraging faster feedback
- allowing developers to fix bugs in early stages
- focus on quality ofthe product
- automate a number of processes -->

## Devops Principles

The main principles of DevOps are introduced by Damon Edwards and John Willis in the year 2010, They presented a model known as **CAMS**, an accronym for **Culture, Automation, Measurement, and Sharing**.

### 1. Culture
Cluture in DevOps means to have strong collaboratoin in between the deveopment and operations teams. Also the developement team gets more close to the consumers to know their needs and requirements much better. 
On the other hand the operations team gets into development process and maintainance and consumer requirements.

All the team members should adhere to these following pillars:
- **Collaboration:**
The development and operations teams should work in strong collaborative manner by understanding the requirements and needs of each other. They should share the activities, action plans and adhere to it adamantly also they should share feedbacks throughout the development and deplyment cycle.
- **Continous changes:**
The continous and steady releases of the products will allow the operations team to have the opportunity to release updates and roll back to the previous stable release in case of any break down or a bug in the product
- **End-to-End responsiblity:**
If all the members of the team as deemed as equally responsible then the eacb member of the team will work well and help each others tasks
- **Early fixing of Bugs and Issues:**
In DevOps it requires that all the bugs and tasks are finished in the early stages of the product development, so that their will be less chances of any bugs after deployment and to have much time to solve the issues if any.

### 2. Automation
Automating the deveopment, testing, deployment is very important part of DevOps, as it helps speed up the overall product deveopment until end of product-lifecycle.
Its a best option to not waste invaluable time to work on repeated and boring tasks, thus it should be automated to make our lives easy.

### 3. Measurement of KPIs
KPIs are the accronym for Key Performance Indicator. Inorder to get the optimal performance of each of the team memeber a KPI metric system is used to keep track of the tasks, progress of the team member with key performance indicators. Also keeping this kind of metric system can show the team what type of tasks works and what wont, thus giving the team an opportunity for improvement.

### 4. Sharing
This pillar cant give more stress on the power of collaboration inbetween the team mates. It is very important to share among each other with thier knowledge of best practices and sharing the feedback among. Therfore this keeps every team member on track and even when a person whos responsible for a task is on a sick leave or a vacation the other team mate with the knowledge can complete the work.


## DevOps Practices
DevOps model comprises of planning, development, testing, deployment, release and monitoring all together making a delivery cycle.

Lets Look at the Core practices in DevOps:

### 1. Agile Planning
In Agile planning the work of the team is divinded into sprints which are generally one to two week long. This helps the team to focus on tasks in chunck which are acheivable and deliverable and this will increase the number of releases instead of one big release which may have more bugs in general making it hard for the team to keep up with the next release. 

By utilizing the agile planning the team can easily change the course of the project by adding new ideas by getting feedback from the recent releases.

The following are the key concepts of agile project mangaement:

- **Workflow phases:**
Start the daily metting with adding your task to a chart which has do, in-progress, code review, and done heading. And this should be shared to all the team members.
This can be done in the daily scrum meetings as well.

- **Breakdown of large projects:**
The team should brainstorm ideas and breakdown the large scale projects into smaller chunks of tasks and planned before starting the development cycle. This will help in a proper understandign and set each team members responsibilities clear.

- **Meetings and managemnebt**
Daily scrumb meeting before starting the workday will help each of the team members to set thier goals for the day and also clears if any team memeber is having any dependanccy with other team member so that they can coordinate with each other.


### 2. Continuous development:
This concept of continuous deveopment is basically the idea of diving the huge software developement tasks to small chucnks of task. Each day the develpoers commits multiple small changes and it will be build and tested automatically through the automated testing processes without wasting the valuable time of the developer.

### 3. Continuous Automated testing:
The Continuous automated testing starts as soon as the developer commits any changes to the version control system (VCS), the VCS checks if there is any conflicts with the current stable software, then its builds and unit tests the code automatically using various tools for examples building and testing piplelines, if there are any conflicts or any bugs an issues from the VCS or testing system then it is shared wiht the development team.

### 4. Continuous Integration and Continuous delivery (CI/CD)
In Continuous integration, the code is integrated in the existing shared repository as soon as the automated testing passes the code. It turns out that the manual integraton of the code is more time consuming than the development of code it self because of pile up of the vast branches and code in the repository over the developement time.

On the other hand Continuous delivery brings together the streamlined pipline for development, testing and deploying, it helps to deliver the software updates to the product.

### 5. Continuous deployment
In Continuous deployment stage the code is deployed for the producntion on a public server. Here it has to ensure that the new deplyed code doesnt effect the functionality of the exiting code. Also it tests and verifys the new features in the earlt phase. There are few automated tools to help us to deploy product increment like Azure, Google Cloud... etc.

### 6. Continuous monitoring
In this stage whole DevOps cycle is assesed to detect problematic areas of processes and geting and analyzing the feedback from the team and the consumers of the product for issues and bugs and thus fixing and improving the software.

### 7. Infrastrcture as a code
Infrastructure as a Code IaC is a infrasturcture management approach that combines the continuous delivery and Devops. It uses scripts to set the environment of the particular test or production case.

On the contrary without the IaC engineers have to set the environment manualy for each deveopment, testing, production or deployment case.

### 8. Containerization
Containers are very light weight when compared to virtual machines, they can contain only the required packages or libraries in them rather than having complete operating system like the virtual machines do. So docker containers with our code can be tested and deployed to various environments much faster and reliably.

### 9. Microservices
Microservices is an architecturial approach in which the developers divide the tasks into various independent services that can work with each other. By building the application using microservices architecture the testing, debugging and bug fixes becomes more convinient and also if any of the micro service fails the other part of the application still remains functional.