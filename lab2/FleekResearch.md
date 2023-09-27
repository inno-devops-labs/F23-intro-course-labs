## IPFS
**IPFS (InterPlanetary File System)** is a **decentralized** and distributed protocol designed to enable a peer-to-peer file sharing and content-addressable storage system. It provides a new approach to storing and accessing files on the internet by using a unique content-based addressing system instead of relying on traditional location-based addressing. In IPFS, files are identified and retrieved based on their content, using cryptographic hashes, which ensures data integrity and tamper resistance. This **peer-to-peer** network allows users to store and retrieve files from multiple sources, making it more resilient to failures and censorship. IPFS combines ideas from distributed file systems, **decentralized** web protocols, and blockchain technology to create a resilient, efficient, and decentralized file storage and sharing solution for the internet.

## Fleek
**Fleek** is a platform that simplifies the deployment and hosting of **decentralized** applications (DApps) on the web. It provides developers with tools and infrastructure to build, deploy, and manage their DApps on decentralized storage networks like IPFS and distributed computing platforms like Ethereum. Fleek abstracts away the complexities of configuring and deploying DApps, offering a seamless user experience. It automates the deployment process, ensuring that DApps are easily accessible, secure, and scalable. Fleek also offers features like version control, automatic updates, and continuous integration/continuous deployment (CI/CD) workflows, enabling developers to iterate and improve their DApps efficiently. With Fleek, developers can focus on building their DApps while leveraging the benefits of **decentralized** technologies for hosting and distribution, ultimately enabling the creation of a more resilient and censorship-resistant web.

## Configuration Steps
1. Create an account and login on [Fleek service](https://app.fleek.co/).
2. Click on **Add new site**.
3. Click on **Connect to Github** and enter your credential. In this step authentication steps might be needed such as verification from respective Github account and/or email.
4. Choose the repository which contains the files needed to be uploaded.
5. In the **Continues Deployment** section pick the **IPFS** as the Hosting Service and click next.
6. Since the file in the lab assignment is a static HTML file there is no need to configure any options in the last section, press **Deploy Site**.
> For more information about the configuration options please refer to Observation section.
7. Wait until the content deployed and the URL is appeared in the logs.
## URL
> https://calm-fire-9069.on.fleek.co//

## Observation
1. It is recommended to connect only the needed Github repository to the service rather than the entire account, because of security and confidentiality reasons.
2. It is possible to deploy more than static HTML content, and use frameworks like React, Nextjs, NuxtJs, Svelte, ... . The option is in the last section of the deployment and in the **Framework** dropdown menu.
3. It is possible to deploy docker images. The option is in the last section of the deployment and in the **Docker Image Name** Input.
4. In the final section of deployment, under the **advance**, there is the option to define environmental variables for build purposes.
5. The content uploaded to the network is continuously publishing through the network, one can check the **Last Published** and **Current IPFS Hash** by clicking on the website in their respective dashboard. 
6. There are JavaScript and Go integrations for IPFS.
7. There Desktop application and command-line tools for IPFS.
8. More information can be found in the [official IPFS documentation](https://docs.ipfs.tech/).
