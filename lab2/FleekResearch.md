The steps I took to set up the project on Fleek:

1. Registered on Fleek.co
2. Connected my Github account to Fleek
3. Have chosen my fork of the repository labs for deployment in Fleek interface
4. Set publish directory to . so that Fleek knows the entry point for the app with the .html file (it could not detect it automatically)
5. Pressed deploy and waited for the deploy
6. Pressed add custom domain
7. I had some unoccupied domain, so I used it, pressed Verify
8. Pressed Check DNS configuration
9. Added a CNAME record with subdomain devops pointing to the link provided on my DNS provider website
10. Waiter for around an hour till changes propagate, traced it via dnschecker.org
11. Pressed verify DNS configuration
12. My website with custom domain name is ready, the link is: https://devops.yastanu.ru/

Custom domain: https://devops.yastanu.ru/

IPFS link: https://fleek.ipfs.io/ipfs/QmVyEB7qccxFD7N2UUhxWiht8mqwZnUSU1EbhrVxjiCLec/
