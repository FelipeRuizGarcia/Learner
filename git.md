# Git


Learn git

https://ohmygit.org/
<br>
An open source game about learning Git!

#### Best Practice
https://initialcommit.com/blog/git-commit-messages-best-practices

## PRO TIPs: My own journy / flow

##### Make an PR before to delete a branch, bc pr closed can restore the branch.

---

##### `git log  --name-status`
https://stackoverflow.com/questions/8691199/what-does-t-mean-in-git-status-it-isnt-in-the-man-page

---


# Git Submodules

### PROTIPS

#####   update directly with  `git submodule` to fetch the submodules changes
##### use `git submodule set-branch -b dev common-modules` to track specific branch in a submodule
###### PROTIP: Always use submodules via `$ git submodules <>`, and not via .gitmodules, bc it updates all the refs required.

Git checkout on the parent repo does not change auto to the child repos:
Once you checkout the desired branch that points to specific commits
you should point the specific commits with `git submodule init && git submodule update`

https://git-scm.com/book/en/v2/Git-Tools-Submodules

https://dev.to/colinmcd01/git-submodules-gbp


### Git WorkTree | Manage multiple working trees

https://git-scm.com/docs/git-worktree

https://opensource.com/article/21/4/git-worktree



### Git Tree

https://dev.to/nichartley/whats-a-git-tree-5149

https://git-scm.com/docs/git-ls-tree


### Monorepos
https://monorepo.tools/

