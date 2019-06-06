# Git 操作規範與建議

## 基本必學指令

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

## Commit message

Commit message 是給人看的，因此要盡可能讓不懂狀況的人看得懂。

> [參考文章](https://blog.louie.lu/2017/03/21/%E5%A6%82%E4%BD%95%E5%AF%AB%E4%B8%80%E5%80%8B-git-commit-message/)

多數情況都會使用英文，是為了避免編碼的錯誤，但也**可以**使用中文。

規範： 

* [前端工程團隊建議規範](git-commit-message-guide-f2e.md)

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
Desktop.ini
Thumbs.db

# NetBeans project files
/nbproject/*

# IntelliJ IDEA project files
/.idea

# Eclipse project files
/.buildpath
/.classpath
/.project
/.settings

# SVN files
.svn
```
