# 五分鐘了解什麼是 Trunk Based Development

[Trunk Based Development](https://trunkbaseddevelopment.com/)（以下簡稱 TBD）是一個開發流程，也是 Google、Facebook、Microsoft Office 等，知名的企業所使用的開發流程。

> Branches create distance between developers and we do not want that
>
> Frank Compagner, Guerrilla Games

TBD 提出來一個核心觀念，簡單來說就是：開分支會增加距離（distance）。在開始看 TBD 前，必須先了解這個重要的觀念。

這裡的「距離」指的是：一個分支上所開發的功能，到這個功能被部署上線間的距離。這個距離會帶來的問題如：

* 合併前，無法發現是否有重工
* 合併前，無法發現程式是否不相容
* 合併時，有可能很難合併
* 合併後，有可能會破壞意想不到的東⻄

這此問題會隨著時間，讓影響範圍越來越大，因此如何減少這個問題，是 TBD 所在關注的重點。

## 如何確保 commit 的品質

越早越好的話，直接 commit 進主幹分支不是更好嗎？為了保護主幹分支的品質，實務上還是需要開分支，讓未完成的程式不要影響到主幹分支，但要讓合併主幹的時間越早越好。而合併回主幹則需要落實執行審核流程，如：

* Code review，無論是 Pair programming 或是 pull request 的 code review 皆可。
* 持續整合（Continuous Integration）
* 持續交付（Continuous Delivery）

如果審核通過進主幹分支，卻發生問題，則必須立即修正，或還原（rollback）。

## 發布版本（release）

在 TBD 裡，開發人員可以持續交付高品質程式碼到主幹分支，而發布版本則是在這些程式碼中，選擇符合需求的版本開出發布分支，如：

```
         * -> revert v1 -> release
        /
       / 
v1 -> v2 -> v3 -> v4 -> trunk
```

這個例子為，開發者持續交付程式碼到 `v4` 版本，而發布則選擇了 v2 版本，但因為不需要 v1 的程式，因此可以在該發布分支上將 v1 的程式碼還原。最終版本確認完之後，只要在發布分支上打標籤（tag），即可完成發布定版。

## 觸發部署（deploy）

在這個流程中會觸發部署的情況會有三個時機點：

1. trunk（或 master）更新
2. release 更新
3. tag

通常 trunk 更新可以觸發部署到測試機，而 tag 則是可以觸發部署正式機。實際做法可依團隊需求做適當的調整。
