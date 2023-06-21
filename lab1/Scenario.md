# Student Information
Name: Md Motasim Bhuiyan

Email: m.bhuiyan@innopolis.university

Group: BS21-CS-01

# Scenario
The scenario contains a case where a team of developers try to create a social media where people can share images, see other profiles, rate images and comment. The social media has a microservice architecture and some of the microservices need better/more server than others.

There are several challenges that the team faces-

* Because there are several servers involved, it is hard to deploy each of them manually, also it takes some time to do so. 
* Additionally, because there are serveral teams working, the codes are often error-prone. 
* In most error cases users get `500` without any explanation.

## Solution
The team can use the following DevOps principles to overcome the challenges and achieve the desired outcomes.
* CI - Developers can write unit tests to ensure that the code is working as expected. They can also use a CI tool like `Jenkins` to automate the building and testing process. (This principle implements `automation`, `collaboration` and `efficiency` practices)
* CD - The code can be deployed to the servers automatically. Such can also be done using `Jenkins`. Additionally `docker` can be used to maintain consistensy and `kubernetes` can be used for orchestration. (This principle also implements `automation` and `efficiency` practices)
* Monitoring - Because users are getting `500` error in most cases, it is better to have serverside monitoring to see which endpoints are failing and why. `Prometheus` can be used for monitoring and `Grafana` can be used for visualization. Full program log can be viewed for detailed explanation (This principle implements `efficiency` practice)