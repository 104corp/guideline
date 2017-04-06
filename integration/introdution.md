# Integration

這個章節將會說明整合的目的，與如何使用自動化測試來確保原始碼整合無誤。

1. [整合的目的]()
2. [自動化建置]()
3. [自動化測試]()
4. [產出整合結果]()

## Continuous Integration

持續整合指的是「一直」、「時常」、「不斷的」確認原始碼整合無誤。

持續整合必須要依賴大家配合，並養成好習慣，才有辦法真正地實踐。

開發者需遵循的要領如下：

* Commit code frequently
* Don’t commit broken code
* Fix broken builds immediately
* Write automated developers tests
* All tests and inspections must pass
* Run private builds
* Avoid getting broken code

持續整合工程師需遵循的要領如下：

* Automate builds
* Perform single command builds
* Separate build scripts from your IDE
* Centralize software assets
* Create a consistent directory structure
* Fail builds fast
* Build for any environment
* Use a dedicated CI machine and a CI server
* Run fast builds
* State builds

## References

* [開發人員應遵循的七項持續整合要領](http://teddy-chen-tw.blogspot.tw/2012/07/blog-post.html) | Teddy Chen
* [持續整合工程師應遵循的十項要領（上）](http://teddy-chen-tw.blogspot.tw/2012/07/blog-post_04.html) | Teddy Chen
* [持續整合工程師應遵循的十項要領（下）](http://teddy-chen-tw.blogspot.tw/2012/07/blog-post_05.html) | Teddy Chen
* [CI 從入門到入坑](https://github.com/MilesChou/book-intro-of-ci) | Miles Chou
* [Continuous Integration: Improving Software Quality and Reducing Risk](http://www.informit.com/store/continuous-integration-improving-software-quality-and-9780321336385?ranMID=24808)
* [Continuous Integration](https://martinfowler.com/articles/continuousIntegration.html) | Martin Fowler
* [什麼是持續整合？](https://aws.amazon.com/tw/devops/continuous-integration/) | AWS
