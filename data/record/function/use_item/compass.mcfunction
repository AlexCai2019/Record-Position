advancement revoke @s only record:use_item/compass

#沒有安裝就沒有後面的
execute unless data storage record:data root.install run return run tellraw @s ["<", {"text": "記錄位置", "color": "blue"}, "> 尚未安裝資料包！\n<", {"text": "記錄位置", "color": "blue"}, "> 請使用 ", {"text": "/function record:install", "clickEvent": {"action": "run_command", "value": "/function record:install"}, "hoverEvent": {"action": "show_text", "contents": "執行 /function record:install"}}, " 指令安裝。"]

#由於陣列不能傳巨集 所以必須存到{}裡
data modify storage record:data root.uuid.0 set from entity @s UUID[0]
data modify storage record:data root.uuid.1 set from entity @s UUID[1]
data modify storage record:data root.uuid.2 set from entity @s UUID[2]
data modify storage record:data root.uuid.3 set from entity @s UUID[3]

#將uuid傳送至記錄用的函數 作為storage的唯一key
function record:position/get with storage record:data root.uuid

#發送訊息
title @s actionbar {"text": "已成功傳送！", "color": "green"}
playsound entity.player.teleport master @s ~ ~ ~ .5 2.0