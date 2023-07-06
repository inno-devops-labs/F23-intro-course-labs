`Sorry for files from the first lab being in that branch. I messed up with the first lab
and now it is in all other branches.`

## Steps:
1. I created new file ResetTesting.txt in new branch git-reset-practice
and added it into index.
2. Then I made several commits and changes.
3. Next, I tried different variations of reset, including relative references

## Effects from different options:

1. Soft. After using that option, all data added by last commits was not changed
and also was added in index (but not committed, of course). As a result, needed to
just commit changes to return to the previous state.
2. Mixed. After using that option, all data added by last commits was not changed
but was not added in index. As a result, needed to add data to index manually and then commit
changes to return to the previous state.
3. Hard. After using that option, all data added by last commits was deleted (respectively, deleted from index).
As a result, needed to create data from the scratch and commit it to return to the previous state.

## Examples

For example, when I applied hard reset to ResetTesting.txt, it disappeared. But in case of mixed reset, it was just excluded from the index.

## Reflection on the benefits

It is pretty usefull tool for rolling back with different options. It allows to
return to specific commit with or without certain files.
