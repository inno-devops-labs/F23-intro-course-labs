# Practice with git reset

The command I used for this practice:

```shell
git reset (--hard, --soft, --mixed) {commit}
```

## Observations
- Specifying option hard removes all changes completely
- Specifying option mixed keeps changes to files, but they are not staged for commiting
- Specifying option soft keeps all changes and stages them to commit
- Using commit hash makes the head go to specific commit, while HEAD~N goes N commits behind