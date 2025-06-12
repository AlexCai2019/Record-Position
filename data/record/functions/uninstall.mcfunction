gamerule sendCommandFeedback true

tellraw @s ["<", {"text": "記錄位置", "color": "blue"}, "> 謝謝使用記錄位置資料包。"]
tellraw @s ["<", {"text": "記錄位置", "color": "blue"}, "> 若要重新安裝，請使用 ", {"text": "/function record:install", "color": "green", "clickEvent": {"action": "run_command", "value": "/function record:install"}, "hoverEvent": {"action": "show_text", "contents": ["執行", {"text": "安裝", "color": "green"}]}}, " 指令。"]
tellraw @s ["<", {"text": "記錄位置", "color": "blue"}, "> 外部連結：", {"translate": "chat.square_brackets", "with": [{"text": "巴哈姆特", "color": "aqua", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://forum.gamer.com.tw/C.php?bsn=18673&snA=202145"}, "hoverEvent": {"action": "show_text", "contents": "巴哈姆特連結"}}]}, " ", {"translate": "chat.square_brackets", "with": [{"text": "GitHub", "color": "aqua", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://github.com/AlexCai2019/Record-Position"}, "hoverEvent": {"action": "show_text", "contents": "GitHub連結"}}]}, "。"]

clear @a #record:special_items[custom_data~{record: true}]
data remove storage record:data root

scoreboard objectives remove rp_core
scoreboard objectives remove rp_book_cooldown
scoreboard objectives remove rp_compass_cooldown
scoreboard objectives remove rp_turtle_scute_cooldown
scoreboard objectives remove rp_inventory