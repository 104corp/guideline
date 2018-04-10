# PHP

PHP 已有許多可信的第三方整理出建議的參考規範，如果有實作下列功能的需求，請優先考慮 PSR-FIG ：

* Logger: [PSR-3: Logger Interface](http://www.php-fig.org/psr/psr-3/)
* Cache: [PSR-6: Caching Interface](http://www.php-fig.org/psr/psr-6/) 、 [PSR-16: Simple Cache](http://www.php-fig.org/psr/psr-16/)
* HTTP Message: [PSR-7: HTTP Message Interface](http://www.php-fig.org/psr/psr-7/)
* Hyperlink: [PSR-13: Hypermedia Links](http://www.php-fig.org/psr/psr-13/)
* Dependency Injection: [PSR-11: Container Interface](https://www.php-fig.org/psr/psr-11/)
* HTTP Handlers: [PSR-15: HTTP Server Request Handlers](https://www.php-fig.org/psr/psr-15/)

還有一些雖然還在草稿或審查階段，但都是值得參考的：

* PHPDoc Standard: [PSR-5: PHPDoc Standard](https://github.com/phpDocumentor/fig-standards/blob/master/proposed/phpdoc.md)

## 程式碼風格規範

開發基本上**必須**遵守 [PSR-2](http://www.php-fig.org/psr/psr-2/) 規範。其他項目如下列：

* [PHP Document](phpdoc.md)

### Array 實字表示

**必須**使用 `[]` 表示，不使用 `array()` 。使用 `[]` 可以讓程式更簡潔好懂。

```php
// 正確
$arr = [];

// 錯誤
$arr = array();
```

### Array 實字的最後一個元素

最後一個元素後面**必須**要加逗號，因為這樣在差異比對時會非常地清楚。範例如下：

```php
// 正確
$arr = [
    'foo',
    'bar',
];

// 錯誤
$arr = [
    'foo',
    'bar'
];
```

### 多個元素的排版

**建議**不要對齊，因為這樣有助於差異比對。範例如下：

```php
// 正確
$arr = [
    'name' => 'Miles',
    'age' => 18,
];

$data['profile'] = $arr;
$data['fbId'] = 123456789;

// 錯誤
$arr = [
    'name' => 'Miles',
    'age'  => 18,
];

$data['profile'] = $arr;
$data['fbId']    = 123456789;
```
