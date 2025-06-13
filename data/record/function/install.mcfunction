gamerule sendCommandFeedback false

tellraw @s ["<", {text: "記錄位置", color: "blue"}, "> 歡迎使用記錄位置資料包！"]
tellraw @s ["<", {text: "記錄位置", color: "blue"}, "> 使用 ", {text: "/function record:setting", color: "gold", click_event: {action: "run_command", command: "/execute as @a run function record:setting"}, hover_event: {action: "show_text", value: "開啟設定"}}, " 開啟設定。"]
tellraw @s ["<", {text: "記錄位置", color: "blue"}, "> 使用 ", {text: "/function record:uninstall", color: "red", click_event: {action: "run_command", command: "/function record:uninstall"}, hover_event: {action: "show_text", value: ["執行", {text: "解除安裝", color: "red"}]}}, " 解除安裝。"]
tellraw @s ["<", {text: "記錄位置", color: "blue"}, "> 外部連結：", {translate: "chat.square_brackets", with: [{text: "巴哈姆特", color: "aqua", underlined: true, click_event: {action: "open_url", url: "https://forum.gamer.com.tw/C.php?bsn=18673&snA=202145"}, hover_event: {action: "show_text", value: "巴哈姆特連結"}}]}, " ", {translate: "chat.square_brackets", with: [{text: "GitHub", color: "aqua", underlined: true, click_event: {action: "open_url", url: "https://github.com/AlexCai2019/Record-Position"}, hover_event: {action: "show_text", value: "GitHub連結"}}]}, "。"]

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