## Git Commit Template 範本

```
<type>(<scope>): <subject>

<body>

<footer>

# -- Type --
# 必須是以下之一:
#
# feat: 一個新功能
# fix: 一個 bug 修復
# docs: 只是文件更新
# style: 不影響代碼含義的更改 (空白字元, 格式化, 少了分號, 其他)
# refactor: 代碼更改，既不修復錯誤也不添加功能
# perf: 代碼改變提升效能
# test: 補測試或更正現有測試
# build: 影響打包機制，CI配置或外部依賴關係的更改 (example scopes: gulp, broccoli, npm)
# chore: 其他不修改src或測試文件的更改
#

# -- Scope --
# 範圍可以是指定提交更改位置的任何內容 例如 編譯, 元素注入, etc.
#

# -- Subject --
# Subject 包含對變更的簡單明白的描述：
# 使用必要的現在時態： "change" not "changed" nor "changes"
# 不要第一個字大寫
# 不要用句點當結尾
#

# -- Body --
# 就像在這個題目一樣，使用必須的現在時態： "change" not "changed" nor "changes".
# Body 該包含變化的動機，並與以前的行為進行對比。
#

# -- Footer --
# Footer 應該包含 Breaking Changes 的資訊並且也是 Github issue close 的參照
# Breaking Changes 應以“BREAKING CHANGE”一詞開頭：帶有空格或兩個換行符。 然後使用其餘的提交消息。
#
```
