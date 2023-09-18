## Lab 1 - DevOps practices

I denote the following DevOps principles:
### 1. Continious integration
Our solution development should have straight path from source code to pre-deployment state having a robust and error-prone build and testing pipeline. As an example of practice fulfilling the principle I denote **Automated testings**. This practice allow us to make sure that each build completes full course of testings equal for each version.

For example, we can have a web-site development with logging system. John used to compile the source code and run tests which he considered best manually. After Jonh get fired, Mark looked at the repository and developed his own tests. Next day he observed the John's tests and decided to use part of them as well commenting out few lines as they dublicated his tests. After Mark was fired, Pete looked at all tests and did not have time to understad the commented lines and uncommeted them and just started to run them all with handicapped script which disallowed to add any more tests easily.
Thus, manual testing pipeline caused huge mess and non-optimal testing practice. If John would have created and integrated tests into building pipeline, all of this could be averted.

### 2. Continuous Delivery/Deployment
Our solution should have automated mechanism of deployment of code changes into the live production. For example, **Continious release** is one of practicies which upholds such principle. This practice automates integration of a release package.

