# 命名方式


## 基本原則

* 使用有意義的文件命名方式
* 命名前觀察前人的規則
* 命名時思考命命物件的意義
* 省略日期與版本，請交由檔案管理工具



## 專案、資料夾、 Repository ，命名方式

***1. 全公司，命名方式 ( public )。***
     
單字，請以簡潔明確的單字。

> 無需加 104 開頭

命名方式：
```
ex: guideline
```

兩個字以上，請以 ``` - ``` 作為命名。

命名方式：
```
ex: design-language
```


***2. 全公司，命名方式 ( private ) 。***
     
命名請以 104 開頭。
以 ```-``` 作為兩字以上的連接

命名方式：
```
ex: 104-{ 功能名稱 } 
```
   
***前端部門，命名方式。***


命名方式：

```
104-f2e-{ 功能名稱 }
ex: 104-f2e-es6-pack-toolkit
```

***公司專案命名方式***

1. 後端為主專案

根據後端專案名稱最後添加 ```-f2e```

命名方式：

```
104-{ 後端專案名稱 }-f2e
```

2. 完全前後分離專案

104-f2e-{ project name }


## 資料夾命名

資料夾深度，請控制在四層內，超過四層情謹慎。可以考慮以 file 的 naming 方式，作分類。
```
ex: ActinoUsersGet ActionSearch ActionPhoto  
```

以單字、功能為主，兩字以上請使用， ```-```` 或 ```_``` 。
```
ex: node_module webpack_config
```

## 檔案命名

1. 制止使用數字
2. 使用駝峰式 Camel Case 命名

## 功能模組命名

1. 請選用足以代表該功能與意義的命名。

## 變數命名
   
[Airbnb 命名規則](https://github.com/airbnb/javascript#naming-conventions)。

<details>
 ## Naming Conventions
 
   <a name="naming--descriptive"></a><a name="22.1"></a>
   - [23.1](#naming--descriptive) Avoid single letter names. Be descriptive with your naming. eslint: [`id-length`](http://eslint.org/docs/rules/id-length)
 
     ```javascript
     // bad
     function q() {
       // ...
     }
 
     // good
     function query() {
       // ...
     }
     ```
 
   <a name="naming--camelCase"></a><a name="22.2"></a>
   - [23.2](#naming--camelCase) Use camelCase when naming objects, functions, and instances. eslint: [`camelcase`](http://eslint.org/docs/rules/camelcase.html) jscs: [`requireCamelCaseOrUpperCaseIdentifiers`](http://jscs.info/rule/requireCamelCaseOrUpperCaseIdentifiers)
 
     ```javascript
     // bad
     const OBJEcttsssss = {};
     const this_is_my_object = {};
     function c() {}
 
     // good
     const thisIsMyObject = {};
     function thisIsMyFunction() {}
     ```
 
   <a name="naming--PascalCase"></a><a name="22.3"></a>
   - [23.3](#naming--PascalCase) Use PascalCase only when naming constructors or classes. eslint: [`new-cap`](http://eslint.org/docs/rules/new-cap.html) jscs: [`requireCapitalizedConstructors`](http://jscs.info/rule/requireCapitalizedConstructors)
 
     ```javascript
     // bad
     function user(options) {
       this.name = options.name;
     }
 
     const bad = new user({
       name: 'nope',
     });
 
     // good
     class User {
       constructor(options) {
         this.name = options.name;
       }
     }
 
     const good = new User({
       name: 'yup',
     });
     ```
 
   <a name="naming--leading-underscore"></a><a name="22.4"></a>
   - [23.4](#naming--leading-underscore) Do not use trailing or leading underscores. eslint: [`no-underscore-dangle`](http://eslint.org/docs/rules/no-underscore-dangle.html) jscs: [`disallowDanglingUnderscores`](http://jscs.info/rule/disallowDanglingUnderscores)
 
     > Why? JavaScript does not have the concept of privacy in terms of properties or methods. Although a leading underscore is a common convention to mean “private”, in fact, these properties are fully public, and as such, are part of your public API contract. This convention might lead developers to wrongly think that a change won’t count as breaking, or that tests aren’t needed. tl;dr: if you want something to be “private”, it must not be observably present.
 
     ```javascript
     // bad
     this.__firstName__ = 'Panda';
     this.firstName_ = 'Panda';
     this._firstName = 'Panda';
 
     // good
     this.firstName = 'Panda';
     ```
 
   <a name="naming--self-this"></a><a name="22.5"></a>
   - [23.5](#naming--self-this) Don’t save references to `this`. Use arrow functions or [Function#bind](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/bind). jscs: [`disallowNodeTypes`](http://jscs.info/rule/disallowNodeTypes)
 
     ```javascript
     // bad
     function foo() {
       const self = this;
       return function () {
         console.log(self);
       };
     }
 
     // bad
     function foo() {
       const that = this;
       return function () {
         console.log(that);
       };
     }
 
     // good
     function foo() {
       return () => {
         console.log(this);
       };
     }
     ```
 
   <a name="naming--filename-matches-export"></a><a name="22.6"></a>
   - [23.6](#naming--filename-matches-export) A base filename should exactly match the name of its default export.
 
     ```javascript
     // file 1 contents
     class CheckBox {
       // ...
     }
     export default CheckBox;
 
     // file 2 contents
     export default function fortyTwo() { return 42; }
 
     // file 3 contents
     export default function insideDirectory() {}
 
     // in some other file
     // bad
     import CheckBox from './checkBox'; // PascalCase import/export, camelCase filename
     import FortyTwo from './FortyTwo'; // PascalCase import/filename, camelCase export
     import InsideDirectory from './InsideDirectory'; // PascalCase import/filename, camelCase export
 
     // bad
     import CheckBox from './check_box'; // PascalCase import/export, snake_case filename
     import forty_two from './forty_two'; // snake_case import/filename, camelCase export
     import inside_directory from './inside_directory'; // snake_case import, camelCase export
     import index from './inside_directory/index'; // requiring the index file explicitly
     import insideDirectory from './insideDirectory/index'; // requiring the index file explicitly
 
     // good
     import CheckBox from './CheckBox'; // PascalCase export/import/filename
     import fortyTwo from './fortyTwo'; // camelCase export/import/filename
     import insideDirectory from './insideDirectory'; // camelCase export/import/directory name/implicit "index"
     // ^ supports both insideDirectory.js and insideDirectory/index.js
     ```
 
   <a name="naming--camelCase-default-export"></a><a name="22.7"></a>
   - [23.7](#naming--camelCase-default-export) Use camelCase when you export-default a function. Your filename should be identical to your function’s name.
 
     ```javascript
     function makeStyleGuide() {
       // ...
     }
 
     export default makeStyleGuide;
     ```
 
   <a name="naming--PascalCase-singleton"></a><a name="22.8"></a>
   - [23.8](#naming--PascalCase-singleton) Use PascalCase when you export a constructor / class / singleton / function library / bare object.
 
     ```javascript
     const AirbnbStyleGuide = {
       es6: {
       },
     };
 
     export default AirbnbStyleGuide;
     ```
 
   <a name="naming--Acronyms-and-Initialisms"></a>
   - [23.9](#naming--Acronyms-and-Initialisms) Acronyms and initialisms should always be all capitalized, or all lowercased.
 
     > Why? Names are for readability, not to appease a computer algorithm.
 
     ```javascript
     // bad
     import SmsContainer from './containers/SmsContainer';
 
     // bad
     const HttpRequests = [
       // ...
     ];
 
     // good
     import SMSContainer from './containers/SMSContainer';
 
     // good
     const HTTPRequests = [
       // ...
     ];
 
     // also good
     const httpRequests = [
       // ...
     ];
 
     // best
     import TextMessageContainer from './containers/TextMessageContainer';
 
     // best
     const requests = [
       // ...
     ];
     ```

</details>




    
## 函式命名

   * 方法
   * 偵聽函示

## Objct / Class 命名

## 參考文章

  * [如何擺脫項目命名困難的尷尬局面](https://segmentfault.com/a/1190000008777858)。
  * [JavaScript Clean Code](https://github.com/ryanmcdermott/clean-code-javascript)。
  * [JavaScript Clean Code 簡中翻譯](https://github.com/alivebao/clean-code-js)。
  * [Best practices for file naming](https://library.stanford.edu/research/data-management-services/data-best-practices/best-practices-file-naming)。 
  * [The Best Way to Name Your Files](https://getmethod.com/blog/2012/6/30/the-best-way-to-name-your-files.html)