#language: zh-TW

功能: 影片列表
  場景: 當蒼時開啟列表頁面時，顯示最新的 5 筆電影
    假設 這裡有幾部電影
      | date       | name                                             |
      | 2023-06-04 | SANKYO PRESENTS WALKURE FINAL LIVE TOUR 現場直播 |
      | 2023-05-23 | 小美人魚                                         |
      | 2023-05-17 | 玩命關頭X                                        |
    當 開啟電影列表
    那麼 會看到 "1. SANKYO PRESENTS WALKURE FINAL LIVE TOUR 現場直播"
    並且 會看到 "2. 小美人魚"
    並且 會看到 "3. 玩命關頭X"
