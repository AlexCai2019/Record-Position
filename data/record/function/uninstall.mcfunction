tellraw @s ["<", {"text": "記錄位置", "color": "blue"}, "> 謝謝使用記錄位置資料包。"]
tellraw @s ["<", {"text": "記錄位置", "color": "blue"}, "> 若要重新安裝，請使用 ", {"text": "/function record:install", "clickEvent": {"action": "run_command", "value": "/function record:install"}, "hoverEvent": {"action": "show_text", "contents": "執行 /function record:install"}}, " 指令。"]
clear @a #record:special_items[custom_data={record: true}]
data remove storage record:data root