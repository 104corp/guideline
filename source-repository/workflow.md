# Git 工作流程

Git 分散式的特性，造就 Git 的工作流程有非常多種模式。不同的模式有不同的適用專案，以下將會介紹不同工作流程與適用場景，專案可視需求自由選擇使用下列介紹的任何一種流程，但**禁止**使用非下面所列出來的工作流程。

* [Git Flow](#git-flow)
* [GitHub Flow](#github-flow)
* [GitLab Flow](#gitlab-flow)
* [Trunk Based Development](#trunk-based-development)
* [Simple Release Flow](workflow-simple-release.md) 

> 如果有想到更好的流程可以解決某些問題，請在這份文件上更新後再開始採用。

## Git Flow

Git Flow 適用情境：

* 不需快速迭代的產品
* 團隊多數成員對於 Git 不夠熟悉時

## GitHub Flow

[GitHub Flow][] 適用於需快速迭代的產品。

預設開發最新 branch 為 `master` 。任何修改**必須**開分支處理，最後合併回 `master` branch 的時候，需使用 `--no-ff` 參數。當合併發生任何衝突的時候，**必須**立即停止，先做 rebase 後再合併。

開 branch 的名稱建議：

* 功能使用 `feature/` 開頭，如： `feature/add-some-function`
* 修正 bug 使用 `hotfix/` 開頭，如： `hotfix/fix-some-function`

當要合併回 master 時，**建議**使用 GitHub pull request 功能，並做 code review。 

## Trunk Based Development

*Trunk Based Development* 簡稱 TBD，對團隊成員程式、版控等技術能力要求較高。但相對地，它同時擁有穩定與快速開發的好處。

* [五分鐘了解什麼是 Trunk Based Development](tbd/quick-start.md)

## GitLab Flow

GitLab Flow 適合用在多環境佈署的專案，如專案需要佈署 production / staging / testing 三種環境，或許就會適合使用 GitLab Flow。

此外，GitLab Flow 也可以跟上述 workflow 並存，通常都是跟 TBD 並存。

## 參考資料

* [分⽀開發流程和策略](https://ihower.tw/git/files/ihower-git-workflow.pdf) | ihower
* [GitHub Flow][] | GitHub
* [GitLab Flow](https://about.gitlab.com/2014/09/29/gitlab-flow/) | GitLab
* [What is Trunk Based Development?](http://paulhammant.com/2013/04/05/what-is-trunk-based-development/) | Paul Hammant

[GitHub Flow]: https://guides.github.com/introduction/flow/
