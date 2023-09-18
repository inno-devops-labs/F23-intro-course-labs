## Lab 1 - DevOps practices

I denote the following DevOps principles:
### 1. Continious integration
Our solution development should have straight path from source code to pre-deployment state having a robust and error-prone build and testing pipeline. As an example of practice fulfilling the principle I denote **Automated testings**. This practice allow us to make sure that each build completes full course of testings equal for each version. For instance, Rust framework includes auto test feature and allows to enable testing after each build.

### 2. Continuous Delivery/Deployment
Our solution should have automated mechanism of deployment of code changes into the live production. For example, **Continious release** is one of practicies which upholds such principle. This practice automates integration of a release package. For instance, there are Docker configuration files which allow to compose deploy-ready solution after the singe configuration.

### 3. Monitoring
Effective solution is only as good as the harmless mistakes which cannot be observed during development stage. **Continious monitoring** is essential tool in runtime error detection as well as product features evaluation.

