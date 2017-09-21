# Git Commit Message Guide ( ```f2e``` )

翻譯 [git commit msg](http://karma-runner.github.io/0.10/dev/git-commit-msg.html)

這份配置的理由：

* 自動生成更新日誌
* 簡單的查詢 git 歷史紀錄 (eg. ignoring style changes)

## Git Commit Template 範本

* [中文](git-commit-template-f2e-chtw.md)
* [英文](git-commit-template-f2e-en.md)

## Commit message 的格式:
```
<type>(<scope>): <subject>

<body>

<footer>
```
## Message 主題 (第一行)
第一行，不能超過 70 個字元。第二行，保持空白。其他行，應包含 80 個字元。

***許可的 ```<type>``` 的種類：***

* feat (new feature)
* fix (bug fix)
* docs (changes to documentation)
* style (formatting, missing semi colons, etc; no code change)
* refactor (refactoring production code)
* test (adding missing tests, refactoring tests; no production code change)
* chore (updating grunt tasks etc; no production code change)

***範例 ```<scope>``` 的種類：***

* init
* runner
* watcher
* config
* web-server
* proxy
* etc.


<scope> 可以是空的 (eg. 假如是 global 或難以被拆解的 components), 這種情況之下範圍可以省略.

## Message body

* 使用必要的時態： “change” not “changed” nor “changes”
* 包括改變的動機和與以前的行為形成對比。
* 可為中文。

更多關於 message body 的範例, 請看:

* http://365git.tumblr.com/post/3308646748/writing-git-commit-messages
* http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html

## Message footer
***issues 參照***
關閉 issues 應該在 footer 中的單獨一行列出 前綴 ```"Closes"``` 關鍵字，像這樣：
```
Closes #234
```
或者如果有多個 issues ：
```
Closes #123, #245, #992
```
***Breaking changes 突破性變化***

所有 breaking changes 必須在 footer 被描述，其中包含變更，理由和遷移說明。

> ```補充說明```： breaking change 的意思：
> 本次版本的 commit 代碼跟上一個版本，不兼容。
> 必須被特別說明。

```
BREAKING CHANGE:
`port-runner` command line option has changed to `runner-port`, so that it is
consistent with the configuration file syntax.

To migrate your project, change all the commands, where you use `--port-runner`

to `--runner-port`.
```

This document is based on [AngularJS Git Commit Message Conventions](https://docs.google.com/document/d/1QrDFcIiPjSLDn3EL15IJygNPiHORgU1_OOAqWjiDU5Y/edit#heading=h.uyo6cb12dt6w).

## 參考資料

 * [Commit message 和 Change log 编写指南 - 阮一峰的网络日志](http://www.ruanyifeng.com/blog/2016/01/commit_message_change_log.html)。
 * [AngularJS Git Commit Message Conventions](https://docs.google.com/document/d/1QrDFcIiPjSLDn3EL15IJygNPiHORgU1_OOAqWjiDU5Y/edit#heading=h.uyo6cb12dt6w)。
 * [AngularJS Git Commit Message Conventions - gist](https://gist.github.com/stephenparish/9941e89d80e2bc58a153)。
 * [Karma Git Commit Msg](http://karma-runner.github.io/0.10/dev/git-commit-msg.html)。
 * [ESLint Git Commit Msg](https://eslint.org/docs/developer-guide/contributing/pull-requests)。
 * [Angular vs React : text analysis of commit messages](https://medium.com/@sAbakumoff/angular-vs-react-text-analysis-of-commit-messages-1cda199f3bdb)
