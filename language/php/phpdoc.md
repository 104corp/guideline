# PHP Document

PHP 文件的建議寫法

## Variable Type

Method 的 params 和 return **必須**清楚定義傳入與傳出的格式，如：

```php
/**
 * @param int|string $no
 * @return string
 */
public function getItem($no)
```

Property 也**必須**定義，如：

```php
/**
 * @var array
 */
public $data
```

另外使用 inline 定義也行，如：

```php
/** @var \GuzzleHttp\Psr7\Request $request */
$request = $history[0]['request'];
```

基本型態的格式如下：

* `null`
* `bool`
* `int`
* `float`
* `double`
* `string`
* `array`
* `callable`
* `mixed` - 代表有各種可能

有時候雖然沒辦法確定是某個基本型態，但也不會像 `mixed` 一樣不確定，這時**建議**用組合型態，如：

* `int|string` - 代表是整數或字串
* `stdClass[]` - 代表是陣列，裡面每個元素都是 stdClass 物件
