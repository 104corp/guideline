# 命名方式

## 基本原則

* 使用有意義的文件命名方式。
* 命名前，觀察前人的規則。
* 命名時思考命命物件的意義。
* 省略日期與版本，請交由檔案管理工具。

## 專案、資料夾、 Repository 的命名方式

**1. 全公司，命名方式 ( public )。**
     
1. 單字，請以簡潔明確的單字。

> 無需加 { 公司名稱 } 開頭

命名方式：
```
ex: guideline
```

2. 兩個字以上，請以 ``` - ``` 作為命名。

命名方式：

```
ex: design-language
```

**2. 全公司，命名方式 ( private ) 。**
     
命名請以 { 公司名稱 } 開頭。

命名方式：

```
ex: { 公司名稱 }-{ 功能名稱 } 
```
   
**前端部門，命名方式。**

命名方式：

```
{ 公司名稱 }-{ 部門名稱 }-{ 功能名稱 }
/**
 * 以 104 前端部門為例 
 * ex: 104-f2e-es6-pack-toolkit
 */
```

***公司專案命名方式***

1. 後端為主專案

根據後端專案名稱最後添加 ```-f2e```

命名方式：

```
{ 公司名稱 }-{ 後端專案名稱 }-f2e
```

2. 完全前後分離專案

```
{ 公司名稱 }-{ 部門名稱 }-{ project name }
```

## 資料夾命名

資料夾深度，請控制在四層內，超過四層請謹慎。可以考慮以 file 的 naming 方式，作分類。

```
ex: file name - 
      - ActinoUsersGet
      - ActionSearch
      - ActionPhoto  
```

以單字、功能為主，兩字以上請使用， `-` 或 _` 。

```
ex: node_module webpack_config
```

## 檔案命名

1. 禁止使用數字
2. 使用駝峰式 Camel Case 命名

## 功能模組命名

1. 請選用足以代表該功能意義的命名。

## 變數命名
   
[Airbnb 命名規則](https://github.com/airbnb/javascript#naming-conventions)。

## 函式命名

* 方法
  + 描述動作，以動詞開頭， show 、 hide 、 close 、 open。
  + 邏輯判斷，表現邏輯的字眼開頭， isIE 、 hasUser 。  
* 偵聽函示
  + on{ 事件名稱 }

## Object / Class 命名

大寫開頭

## 參考文章

* [如何擺脫項目命名困難的尷尬局面](https://segmentfault.com/a/1190000008777858)。
* [JavaScript Clean Code](https://github.com/ryanmcdermott/clean-code-javascript)。
* [JavaScript Clean Code 簡中翻譯](https://github.com/alivebao/clean-code-js)。
* [Best practices for file naming](https://library.stanford.edu/research/data-management-services/data-best-practices/best-practices-file-naming)。 
* [The Best Way to Name Your Files](https://getmethod.com/blog/2012/6/30/the-best-way-to-name-your-files.html)
