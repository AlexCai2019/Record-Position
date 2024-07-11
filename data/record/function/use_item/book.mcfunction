advancement revoke @s only record:use_item/book

#沒有安裝就沒有後面的
execute unless data storage record:data root.install run return run tellraw @s ["<", {"text": "記錄位置", "color": "blue"}, "> 尚未安裝資料包！\n<", {"text": "記錄位置", "color": "blue"}, "> 請使用 ", {"text": "/function record:install", "clickEvent": {"action": "run_command", "value": "/function record:install"}, "hoverEvent": {"action": "show_text", "contents": "執行 /function record:install"}}, " 指令安裝。"]

#將UUID傳送至記錄用的函數 作為storage的唯一key
function record:position/store with entity @s

#發送訊息
title @s actionbar {"text": "已成功記錄！", "color": "gold"}
playsound entity.player.levelup master @s ~ ~ ~ .1 2.0