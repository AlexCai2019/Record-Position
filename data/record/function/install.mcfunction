gamerule sendCommandFeedback false

tellraw @s ["<", {"text": "記錄位置", "color": "blue"}, "> 歡迎使用記錄位置資料包！"]
tellraw @s [{"text": "<", "clickEvent": {"action": "run_command", "value": "/execute as @a run function record:setting"}, "hoverEvent": {"action": "show_text", "contents": "開啟設定"}}, {"text": "記錄位置", "color": "blue"}, "> 使用 ", {"text": "/function record:setting", "color": "aqua", "underlined": true}, " 開啟設定。"]
tellraw @s ["<", {"text": "記錄位置", "color": "blue"}, "> 使用 ", {"text": "/function record:uninstall", "clickEvent": {"action": "run_command", "value": "/function record:uninstall"}, "hoverEvent": {"action": "show_text", "contents": "執行 /function record:uninstall"}}, " 解除安裝。"]
tellraw @s ["<", {"text": "記錄位置", "color": "blue"}, "> 外部連結：", {"translate": "chat.square_brackets", "color": "aqua", "with": [{"text": "巴哈姆特", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://forum.gamer.com.tw/Co.php?bsn=18673&sn=1078100"}, "hoverEvent": {"action": "show_text", "contents": "巴哈姆特連結"}}]}, " ", {"translate": "chat.square_brackets", "color": "aqua", "with": [{"text": "GitHub", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://github.com/AlexCai2019/Record-Position"}, "hoverEvent": {"action": "show_text", "contents": "GitHub連結"}}]}, "。"]

scoreboard objectives add rp_core dummy
scoreboard objectives add rp_book_cooldown dummy
scoreboard objectives add rp_compass_cooldown dummy
scoreboard objectives add rp_turtle_scute_cooldown dummy
scoreboard objectives add rp_inventory dummy

#偵測有安裝
scoreboard players set #install rp_core 1
#開啟自動給予
scoreboard players set #auto_give rp_core 1
#開啟落地偵測(記錄)
scoreboard players set #ground_store rp_core 1
#關閉落地偵測(傳送)
scoreboard players set #ground_teleport rp_core 0