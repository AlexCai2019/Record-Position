gamerule sendCommandFeedback true

tellraw @s ["<", {text: "記錄位置", color: "blue"}, "> 謝謝使用記錄位置資料包。"]
tellraw @s ["<", {text: "記錄位置", color: "blue"}, "> 若要重新安裝，請使用 ", {text: "/function record:install", color: "green", click_event: {action: "run_command", command: "/function record:install"}, hover_event: {action: "show_text", value: ["執行", {text: "安裝", color: "green"}]}}, " 指令。"]
tellraw @s ["<", {text: "記錄位置", color: "blue"}, "> 外部連結：", {translate: "chat.square_brackets", with: [{text: "巴哈姆特", color: "aqua", underlined: true, click_event: {action: "open_url", url: "https://forum.gamer.com.tw/C.php?bsn=18673&snA=202145"}, hover_event: {action: "show_text", value: "巴哈姆特連結"}}]}, " ", {translate: "chat.square_brackets", with: [{text: "GitHub", color: "aqua", underlined: true, click_event: {action: "open_url", url: "https://github.com/AlexCai2019/Record-Position"}, hover_event: {action: "show_text", value: "GitHub連結"}}]}, "。"]

clear @a poisonous_potato[custom_data~{record: true}]
data remove storage record:data root

scoreboard objectives remove rp_core
scoreboard objectives remove rp_writable_book_cooldown
scoreboard objectives remove rp_ender_pearl_cooldown
scoreboard objectives remove rp_turtle_scute_cooldown
scoreboard objectives remove rp_inventory