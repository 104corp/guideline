# Makefile

歷史可以參考 [Wiki](https://zh.wikipedia.org/wiki/Make) ，即使現在有許多好用的建置工具或是 IDE 可以幫助建置，但 Makefile 現在仍然很廣泛使用，甚至是 [Linux](https://github.com/torvalds/linux/blob/master/Makefile) 也是使用 Makefile 建置。因此，建置工具依然會先建議使用 Makefile 。

## Example

```makefile
.PHONY: build clean test compile package integration up down image

build: clean deps compile test
	# 依賴會因不同語言或專案，有不同的做法
	# 建置完能佈署程式到 Docker / Vagrant

clean:
	# 清除建置產出物和 test 所依賴的開發環境

deps:
	# 下載依賴

compile:

test: sandbox
	# 單元測試與使用 sandbox 的整合測試

package: build
	# 打包程式

acceptance: up
	# 啟動測試環境，執行 acceptance 測試

sandbox:
	# 建置 test 所需要的環境

up: image
	# 啟動測試環境

down:
	# 清除測試環境

image: build
	# 產出 Vagrant Box / Docker Image
	# 需依賴 build 
```
