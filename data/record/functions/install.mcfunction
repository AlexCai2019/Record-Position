tellraw @s ["<", {"text": "記錄位置", "color": "blue"}, "> 歡迎使用記錄位置資料包！"]
tellraw @s [{"text": "<", "clickEvent": {"action": "run_command", "value": "/execute as @a run function record:use_item/item"}, "hoverEvent": {"action": "show_text", "contents": ["發給", {"text": "所有人", "color": "green"}, "道具"]}}, {"text": "記錄位置", "color": "blue"}, "> ", {"text": "點我", "color": "aqua", "bold": true}, " 發給", {"text": "所有人", "color": "green"}, "道具。"]
tellraw @s [{"text": "<", "clickEvent": {"action": "run_command", "value": "/function record:use_item/item"}, "hoverEvent": {"action": "show_text", "contents": ["發給", {"text": "自己", "color": "red"}, "道具"]}}, {"text": "記錄位置", "color": "blue"}, "> ", {"text": "點我", "color": "aqua", "bold": true}, " 發給", {"text": "自己", "color": "red"}, "道具。"]
tellraw @s ["<", {"text": "記錄位置", "color": "blue"}, "> 可以使用 ", {"text": "/function record:uninstall", "clickEvent": {"action": "run_command", "value": "/function record:uninstall"}, "hoverEvent": {"action": "show_text", "contents": "執行 /function record:uninstall"}}, " 解除安裝。"]

#偵測有開啟
data modify storage record:data root.install set value true