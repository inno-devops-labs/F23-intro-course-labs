# GitHub Actions

## Quickstart

<img width="1245" alt="Screenshot 2023-07-23 at 14 25 35" src="https://github.com/metafates/uni-devops-elective/assets/62389790/f7f216bf-913b-45fb-9623-73819d3a8f15">

## Gathering System Information and Manual Triggering

To enable manual trigger we have to add `workflow_dispatch` trigger event

```diff
run-name: ${{ github.actor }} is testing out GitHub Actions 🚀
on: 
  - push
+  - workflow_dispatch
jobs:
+  Gather-System-Information:
+    runs-on: ubuntu-latest
+    steps:
+      - run: lshw
+      - run: uname -a
  Explore-GitHub-Actions:
```
