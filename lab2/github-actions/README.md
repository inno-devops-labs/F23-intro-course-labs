# GitHub Actions

[Website](https://github.com/features/actions)

Automation system (CI/CD). Like Jenkins but for GitHub repositories.

## Purpose and benefits of the tool in the DevOps context

CI/CD is the essence of the DevOps: *automate repetitive tasks.*
And GitHub Actions isn't any different in this context.

- Automate app building
- Artifact deployment
- Testing
- *etc.*

## Key features and functionalities

- Offers runners for any major OS: Linux, Windows & macOS
- Matrix builds which allows simultaneously run multiple operating systems and runtime versions.
- Any language is supported, e.g. Node.js, Rust, Python, Java, and others.
- Natively integrates with GitHub repositories.
- Secrets management.
- Community-powered workflows.

## Use cases and examples of how the tool is used in real-world scenarios

We have a go application hosted on GitHub repository.
We want to automatically compile and release it on each
new tag in the semver format (e.g. v0.1.0) pushed to the main branch.

We can do that by simply creating `.github/workflows/release.yml` with the following contents

```yaml
on:
  workflow_dispatch:
  push:
    tags:
      - 'v*'

jobs:
  release-linux-amd64:
    name: release linux/amd64
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - uses: wangyoucao577/go-release-action@v1
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        goos: linux
        goarch: amd64
```