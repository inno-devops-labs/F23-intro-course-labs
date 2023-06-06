# IPFS

## What is IPFS

IPFS means, Inter Planetary File System. It is aim to is to make the web completely distributed by running it on a peer to peer (P2P) network that works simillarly Bit Torrent P2P protocol.

Right now to access a file on the internet we use "Location Based Addressing" by using the URL protocol, if the server is down, this file won't be available. However there are chances someone had downloaded this file before it became unavailable and has a copy of it, yet, there is no way to get this peer copy. To fix this problem IPFS moves from location based addressing to "Content Based Addressing". With IPFS every file has a unique hash number that serves as address, and when users query a file they actually ask in the P2P network who has a file with that hash number. Furthermore, IPFS has inbuilt security as it is easy to verify that the hash number of the file requested matches the hash that was returned. Moreover, IPFS ensures deduplication, when multiple people publish exactly thesame file on IPFS, it will only be created once and that makes the network very efficient.

Because IPFS uses content based addressing, once something is added to the network, it cannot be changed anymore. It is an immutable datastore much like a blockchain. However, it supports versioning of files, if a document requires edits, IPFS creates commit object for that document and once the new version of the document is upload to the network, another commit object is bound to it keeping track of the previous commit object. This way IPFS will make sure that your file, plus it's entire history is accessible to the other nodes on the network, like on github.

### Purpose of IPFS

Purpose of IPFS to decentralised data storage across the web.
Today most of the media and data on the internet is centralised across cloud networks. It is all stored on big server farms which are generally under the control of a tech giants companies like Google, Microsoft, Yandex and all the rest. There are a couple or problems that arise with centralized data. If servers farms go down or are destroyed we can't access data anymore, security leaks can lead to hacking. Censorship can also be observe as governments or tech giants may restrict users to access data because of one reason or another. With IPFS data is completely distributed by running it on a peer to peer (P2P) network nodes.

### IPFS Limitations

The biggest problem that IPFS faces is keeping file availability. If a specific file is hosted by - let's say 4 nodes and those nodes go offline, then the file becomes unavailable. There are 2 solutions for this problem. Either incentivize nodes or proactively distribute files to make sure that there are always a certain number of copies available on the network. This is what FILE-COINS does. It creates strong incentives for peers to store file on nodes and also replicates file on many nodes.

## Steps to deploy an application on IPFS network using Fleek

### Account Creation:

For ease and conviniency I created an account using my github account and providing my credentials. Fleek provides multiple ways to signup:

- using Crypto-wallets ( MetaMask, RainBow, WalletConnect )
- Email ( Gmail, Yahoo, hotmail ...etc)
- Git providers ( GitHub, GitLab, BitBucket, radicle ..etc).

### Creating a project on Fleek

After signup and login, I created a new site project. Fleek automatically suggest the creation of a new project for the first connection. The creation of a new project involves sub steps:

1. Connection to github account: To deploy the application I needed to connect my Github acccount.
2. Picking a repository : After connecting to GitHub, I chose the repository to containing the source code to be deployed.
3. Choosing the deployment location: There are two my case IPFS and Internet Computer (Mainnet). For this lab, I selected IPFS as the taget hosting platform
4. Build options and deploy settings: Here we simply choose the branch to deploy and if available, provide build settings like application framework, docker image name, build command, publish dorectory, base directory, environments variables. Once done, I deployed the application using the deploy button.
5. Access the application : Deployment might take some few minutes depending on the project. The deployment console shows logs to help in case of issues. Once done, Fleek provides a link to access the deployed application. This link can be used to verify the application is well published on the IPFS network.

### Deployed project link

[Link to my deploy application](https://fleek.ipfs.io/ipfs/QmRkWbZs4GUJLRTUagptQj7TAYmtHBYQCzcpi8mbZEFDpR/)
