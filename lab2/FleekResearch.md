# Fleek Research

**Link:** [weathered-block-4654.on.fleek.co](https://weathered-block-4654.on.fleek.co)

## Steps

1. Give access to the GitHub repository that contains `index.html` in the root.
2. Select hosting service. Since this research is focused on IPFS we choose it. It's also possible to select Mainnet.
3. Select the branch (main) and the framework. Since we're serve a simple static HTML page, we select *other*
4. Under the *advanced* section it's possible to setup environment variables, but we don't need them in our case.
5. Press **deploy site** button. It will take less than a minute for the website to become available.

We will see logs like this:

```
Deploy started at 8:09:53 PM 06/21/2023

8:09:53 PM 06/21/2023: Deploy started
8:09:55 PM 06/21/2023: Docker image: 'node:slim'
8:09:55 PM 06/21/2023: Build command: ''
8:09:55 PM 06/21/2023: Triggering build execution...
8:10:26 PM 06/21/2023: Deployed to IPFS and got the hash:
8:10:26 PM 06/21/2023: QmX9P37ZAnSZD2aNLUnf9T8eUJzQUtWW7dkywmA9YV1hy5
8:10:26 PM 06/21/2023: Checking content availability on IPFS...
8:10:27 PM 06/21/2023: Updating DNS records...
8:10:28 PM 06/21/2023: DNS was updated. You can visit the new site at:
8:10:28 PM 06/21/2023: https://weathered-block-4654.on.fleek.co
```

## Observations

The process is kinda similar to [GitHub Pages](https://pages.github.com/),
except that it uses IPFS and Bunny DNS

The repository must contain an `index.html` in the root directory which will be
served.

I've used [HTTP Connectivity Test](https://tools.bunny.net/http-test?query=https://weathered-block-4654.on.fleek.co) to test the response time of the website.

The first run was slow, over 1s on average. But after the second run it became more responsive (500-700 ms)

