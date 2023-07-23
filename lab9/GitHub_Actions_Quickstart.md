# GitHub Actions

## Quickstart

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
