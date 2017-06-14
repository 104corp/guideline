# API Implement Guideline

## REST
REST APIs SHOULD follow consistent design guidelines to make using them easy and intuitive.  
This document establishes the guidelines REST APIs SHOULD follow so RESTful interfaces are developed consistently.


### URI Naming
ROA（Resource-oriented architecture）  
Keep your base URL simple and intuitive
 
* Resource**必須**為複數名詞
* URI**禁止**使用動詞，對於API的動作請用HTTP Method

### HTTP Method
API實作行為操作必須使用適當的HTTP Method，並且必須遵Method的Idempotent和Safe特性。
* Safe Methods: Request不會造成資源的狀態改變，以API實作可視為唯讀的request。   
[RFC-7231#4.2.1](https://tools.ietf.org/html/rfc7231#section-4.2.1)

* Idempotent(冪等) Methods: Request一次和多次造成的結果都相同
，例如`DELETE /article/1234`的結果是id是1234的article資料被刪除，相同請求再執行多次的結果就是id是1234的article資料不存在，而不是造成更多的資料被刪除。
Idempotent Methods可以Retry，例如，如果client發送了一個request，在收到任何回應之前發生了斷線，則client可以建立新的連線並retry idempotent request。   
[RFC-7231#4.2.2](https://tools.ietf.org/html/rfc7231#section-4.2.2)

|Method|CRUD|Description|Idempotent|Safe|
|:---:|:---:|---|:---:|:---:|
|GET   |Read|用於取得資源內容|Y|Y|
|POST  |Create|用於新建資源|N|N|
|PATCH ([RFC-5789](https://tools.ietf.org/html/rfc5789))|Update|用於更新資源或部分內容|N|N|
|PUT   |Replace or Create|用於取代新建資源 (Payload必須是完整的內容)|Y|N|
|DELETE|Delete|用於刪除資源|Y|N|
* 其它還有一些較少用到的，可參考 Wikipedia：[Hypertext Transfer Protocol](https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol#Request_methods "Request Method")


example.  
![](https://d38wlcdzwz02m5.cloudfront.net/about/cdn/farfuture/nE-mwHmuKPpcTXsv9uN-C3be1AprziBfxsYlNaJOC9o/mtime:1441380349/sites/mktg-new/files/Prag_REST_CRUD_thumb.png)

### HTTP Response State

#### 2xx Success

| Code | 英文說明 | 中文說明 |
|------|------------|----------------------------|
| 200 | OK | 通用狀態碼 |
| 201 | Created | 資源新增成功 |
| 202 | Accepted | 請求已接受，但尚在處理中 |
| 204 | No Content | 請求成功，但未回傳任何內容 |

#### 3xx Redirection

| Code | 英文說明 | 中文說明 |
|------|-------------------|--------------------------------------------------------------------------------------------|
| 301 | Moved Permanently | 資源已移至它處 |
| 303 | See Other | 回傳的內容可在它處取得（例如在用戶端發送了一個 POST 請求之後） |
| 304 | Not Modified | 請求的資源並未修改（通常是用戶端發送了帶有 If-Modified-Since 或 If-None-Match 表頭的請求） |

#### 4xx Client errors

| Code | 英文說明 | 中文說明 |
|------|------------------------|-----------------------------------------------|
| 400 | Bad Request | 通用狀態碼 |
| 401 | Unauthorized | 用戶端尚未驗證 |
| 403 | Forbidden | 用戶端被禁止此請求 |
| 404 | Not Found | 請求的資源不存在 |
| 405 | Method Not Allowed | 不支援請求的 HTTP 方法 |
| 406 | Not Acceptable | 不支援請求所要求的內容類型（Accept 表頭） |
| 415 | Unsupported Media Type | 不支援請求所用的內容類型（Content-Type 表頭） |

#### 5xx Server error

| Code | 英文說明 | 中文說明 |
|------|-----------------------|-----------------------------------------------------------------------------|
| 500 | Internal Server Error | 工程師要找 bug 了 |
| 501 | Not Implemented | 用戶端的請求目前未支援（也就是將來有可能支援） |
| 502 | Bad Gateway | 上游的伺服器未回傳正確結果，一般是 gateway 或 proxy server 才會回傳此狀態碼 |
| 503 | Service Unavailable | 暫停服務 |
| 504 | Gateway Timeout | 上游的伺服器逾時，一般是 gateway 或 proxy server 才會回傳此狀態碼 |

### Response
JSON only
Avoid XML interface unless legacy requirement(s).


## Version
API版本設計的目的在於新舊並存，當發生**不可相容**的情況時，可減少客戶端的衝擊。  

API版本設計將增加管理上的複雜度，請謹慎考量。

**建議** Version in header.  
example:
<pre><code>    GET /user/1 HTTP/1.1
	Host: myapplication.com
	Accept: application/vnd.myapplication.user.v1+json
</code></pre>

[Where to put a version number?](http://allegro.tech/2015/01/Content-headers-or-how-to-version-api.html).  

## Document
[Swagger][] is the world’s largest framework of API developer tools for the OpenAPI Specification(OAS)


# Advanced
## Security Requirement
* HTTPS only  
	* Including Private API & Public API.  
	* Using Public CA (not Self-Signed CA).  
* Sensitive Information (AES)  
	* All sensitive information need to be encrypted with AES module, before storing to disks (including databases).

## SDK
![SDK](http://columns.chicken-house.net/wp-content/uploads/2016/10/apisdk-02-arch.png)

## 參考資料

* [API Guidelines 與 APIM Policy](http://sysblog.104.com.tw/notice.php?op=notice_view&id=17609) | DK
* [HTTP Status Codes](http://www.restapitutorial.com/httpstatuscodes.html)
* [Semantic Versioning 2.0.0](http://semver.org/)
* [Swagger][]



[Swagger]:http://swagger.io/
