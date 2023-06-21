# Deploying on Fleek.co

## Steps to set up
- Creating an account
- Connect Github account
- Picking a repository (`https://github.com/pptx704/DevOpsLabs` for me)
- Select a hosting service (`IPFS`)
- Set build options
   - Repository: `pptx704/DevOpsLabs`
   - Branch: `main`
   - Framework: `Other`
   - Other configs: Default
- Deploy site

## Configuration for Custom Domains
I used my own domain `pptx704.com` with subdomain `fleek`. For this, I needed to create a CNAME record for `fleek.pptx704.com` pointing to `4c914fe68a2c2f0f83bd.b-cdn.net`.

No custom SSL config was needed as Fleek provides SSL by default.

## Links
IPFS Verification Link: https://fleek.ipfs.io/ipfs/QmZyMTSEfLpsUR6W14R26UP3GzCFj4kaRV7mi7Ax7S3oeV/

Fleek Link: https://purple-lab-7690.on.fleek.co/

Custom Domain: https://fleek.pptx704.com/

## Observations
Fleek provides a lot of options for deploying sites. One thing I noticed is that, we can deploy any static site on Fleek, as long as there is a docker image for that on dockerhub. In that sense, we can use our own static site generator and deploy it on Fleek. It is also possible to add additional build steps to the deployment process using the docker image.

One problem I faced is that the fleep hosting is not really intuitive on the build settings page. I had to go through a lot of pages just to figure out that I didn't really need to pick a framework. It is also unintuitive in sense of how to deploy with custom docker images and how fleek actually works.