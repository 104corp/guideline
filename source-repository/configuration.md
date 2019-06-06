# 設定

[安裝](installation.md)好後，即可開始使用 Git 指令，可以打開終端機介面輸入 `git --version` 指令確認：

```
$ git --version
git version 2.21.0
```

第一次安裝 Git **必須**要設定使用者名稱和 email 才能開始 commit，範例如下：

```
$ git config --global user.name "some.one"
$ git config --global user.email "some.one@104.com.tw"
```

設定完後，**可以**加一些顏色的配置，在看下指令後的訊息會更清楚。

```
$ git config --global color.diff auto
$ git config --global color.status auto
$ git config --global color.branch auto
$ git config --global color.log auto
```

**可以**指定 commit 時的預設編輯器。

```
$ git config --global core.editor vim
```

**建議**設定大小寫敏感，原因請參考[這裡](https://blog.avisi.nl/2013/03/27/stop-ignoring-my-capitals-git/)。

```
$ git config --global core.ignorecase false
```

**可以**設定一些 alias。

```
# 顯示節點線路的連線，方便查訊息用
$ git config alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cblueby %an %Cgreen(%cr)%Creset'"
```

## 終端機設定

**可以**參考 [ihower 的文章](https://ihower.tw/blog/archives/5436)修改 `~/.bash_profile` 後，會看到一個較乾淨的終端機介面，操作也比較方便。

## Auto Completion

Ubuntu 預設就會有 Auto Completion 了。

Mac 裝法如下：

```
$ brew install bash-completion
```

然後修改 `~/.bash_profile` 加入下面程式碼：

```bash
if [[ -f $(brew --prefix)/etc/bash_completion ]]; then
    . $(brew --prefix)/etc/bash_completion
fi
```

接著重開終端機即可。
