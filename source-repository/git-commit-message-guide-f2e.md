# Git Commit Message Guide ( ```f2e``` )

翻譯 [git commit msg](http://karma-runner.github.io/0.10/dev/git-commit-msg.html)

這份配置的理由：

* 自動生成更新日誌
* 簡單的查詢 git 歷史紀錄 (eg. ignoring style changes)

## git commit template 範本

* 如何安裝：[Git office document - 7.1 Git 客製化- Git 配置](https://git-scm.com/book/zh-tw/v1/Git-%E5%AE%A2%E8%A3%BD%E5%8C%96-Git-%E9%85%8D%E7%BD%AE)。

```
<type>(<scope>): <subject>

<body>

<footer>

# -- Type --
# Must be one of the following:
#
# feat: A new feature
# fix: A bug fix
# docs: Documentation only changes
# style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
# refactor: A code change that neither fixes a bug nor adds a feature
# perf: A code change that improves performance
# test: Adding missing tests or correcting existing tests
# build Changes that affect the build system, CI configuration or external dependencies (example scopes: gulp, broccoli, npm)
# chore: Other changes that don't modify src or test files
#

# -- Scope --
# The scope could be anything specifying place of the commit change. For example Compiler, ElementInjector, etc.
#

# -- Subject --
# The subject contains a succinct description of the change:
# use the imperative, present tense: "change" not "changed" nor "changes"
# don't capitalize first letter
# no dot (.) at the end
#

# -- Body --
# Just as in the subject, use the imperative, present tense: "change" not "changed" nor "changes".
# The body should include the motivation for the change and contrast this with previous behavior.
#

# -- Footer --
# The footer should contain any information about Breaking Changes and is also the place to reference GitHub issues that this commit Closes.
# Breaking Changes should start with the word BREAKING CHANGE: with a space or two newlines. The rest of the commit message is then used for this.
#
```

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
