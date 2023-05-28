#language: zh-TW

功能: 影片列表
  背景:
    假設 這裡有幾部電影
      | date       | name                                             |
      | 2023-06-04 | SANKYO PRESENTS WALKURE FINAL LIVE TOUR 現場直播 |
      | 2023-05-23 | 小美人魚                                         |
      | 2023-05-17 | 玩命關頭X                                        |

  場景: 當蒼時開啟列表頁面時，顯示最新的 5 筆電影
    當 開啟電影列表
    那麼 會看到 "1. SANKYO PRESENTS WALKURE FINAL LIVE TOUR 現場直播"
    並且 會看到 "2. 小美人魚"
    並且 會看到 "3. 玩命關頭X"

  @wip
  場景: 當蒼時在列表頁面輸入「最近 1」的時候，可以看到離當天日期最近的 1 部電影
    當 開啟電影列表
    並且 在 "Search" 填入 "最近 1"
    並且 點選 "查詢"
    那麼 會看到 "1. 小美人魚"
