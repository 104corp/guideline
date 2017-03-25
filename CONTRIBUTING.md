CONTRIBUTING
==========

此文件說明該如何一起協作，讓此指南更加完整！

以下內容，如果沒有特別說明的話，一律都是**必須**要遵守的。

基本規範
----------

### 修改文件流程

Git 流程採用 TBD（Trunk Based Development，[參考網頁](http://paulhammant.com/2013/04/05/what-is-trunk-based-development/)）。 Mainline 名稱固定為 `master` ，並設定成保護分支（不能 force upload）。

Git Commit 的內容沒有特別規範，**建議**參考[這份文件](https://blog.louie.lu/2017/03/21/%E5%A6%82%E4%BD%95%E5%AF%AB%E4%B8%80%E5%80%8B-git-commit-message/)。

如果對文件有建議修改的內容，可使用 [Fork + Pull Request](https://git-scm.com/book/zh-tw/v2/GitHub-%E5%8F%83%E8%88%87%E4%B8%80%E5%80%8B%E5%B0%88%E6%A1%88) 並使用 Squash and Merge 合併。另外發 PR 需要指定 Reviewer 與 Assignees。

檔案格式
----------

Guideline 所有文件都使用 [Markdown][] 撰寫。

如果有引用圖片，請固定放入 `/images` 目錄下。

Style
----------

### 文章內容

Guideline 使用[中文文案排版指北](https://github.com/sparanoid/chinese-copywriting-guidelines/blob/master/README.md)來統一排版樣式，以下是一些常用樣式的說明：

文章內的標點符號請一律使用全型標點符號，除非是引文為全英文，如：

```markdown
引用某句英文名言：

> Less is More.
```

承上，中文與英文和數字之間，必定要間格一個半形空格，如：

```markdown
CI 是一個觀念；CI 也是一種文化。而理論上， CI 執行 1 次或無數次，都會得到相同的結果。
```

### 標題

文件的主標題（`h1`）與副標題（`h2`）一律使用下面的 style：

```markdown
主標題
==========

副標題
----------
```

標題下的分隔線一律使用十個字元。

### 有序項目

一律使用正確的序號：

```markdown
1. 項目 1
2. 項目 2
3. 項目 3
4. 項目 4
5. 項目 5
```

### 無序項目

如果有巢狀項目的情況，請照下面範例撰寫：

```markdown
* 第一層要用 *
  + 第二層要用 +
    - 第三層要用 -
```

**建議**不要有第四層，因為太多層會造成理解上的困難。

### 原始碼

原始碼如果可以標記語言的話，請一定要標語言，如：

    ```php
    $var = new stdClass();
    ```

如果是要終端機指令需要使用原始碼呈現的話，**建議**使用 bash 語言。如：

    ```bash
    # 註解
    $ some-command
    執行 some-command 的訊息...
    ```

### 連結

連結**可以**使用[參考形式的連結][]表示，比方說：

```markdown
[Composer][] 是一個強大的 PHP 套件管理工具

[Composer]: https://getcomposer.org/
```

[Markdown]: http://markdown.tw/
[參考形式的連結]: http://markdown.tw/#link
