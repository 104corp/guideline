# Git 操作規範與建議

基礎必學指令一覽，如有不清楚用途與使用時機的指令，**建議**需要多練幾回。

* `git init`
* `git status`
* `git add` `git mv` `git rm`
* `git commit`
* `git commit -m <message>`
* `git commit --amend`
* `git log`
* `git diff HEAD^`
* `git checkout <file>`
* `git reset <file>`
* `git branch -a`
* `git branch <branch>`
* `git checkout <branch>`
* `git reset HEAD^`
* `git reset HEAD^ --hard`
* `git reset <branch>`
* `git checkout <branch> <file>`
* `git reset <branch> <file>`
* `git merge`
* `git merge --abort`
* `git rebase`
* `git rebase -i`
* `git rebase --abort` `git rebase --continue`
* `git cherry-pick`
* `git cherry-pick --abort` `git cherry-pick --continue`
* `git remote`
* `git fetch`
* `git fetch -p`
* `git push`
* `git push -u <remote> <branch>`
* `git pull`
* `git pull --rebase`

## .gitignore 建議

**建議**下面這些暫存檔都可以加入 `.gitignore` 檔裡，並寫註解方便未來參考。

```ignore
# Global/Temp.gitignore
*~
*.swp

# Global/OSX.gitignore
.DS_Store

# Thumbnails
._*

# Files that might appear on external disk
.Spotlight-V100
.Trashes

# Global/Windows.gitignore
Thumbs.db
Desktop.ini

# NetBeans project files
nbproject/*

# IntelliJ IDEA project files
.idea

# Eclipse project files
.project
.buildpath
.settings
```
