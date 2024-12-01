advancement revoke @s only record:use_item/book

#沒有安裝就沒有後面的
execute unless score #install rp_core matches 1 run return run tellraw @s ["<", {"text": "記錄位置", "color": "blue"}, "> 尚未安裝資料包！\n<", {"text": "記錄位置", "color": "blue"}, "> 請使用 ", {"text": "/function record:install", "clickEvent": {"action": "run_command", "value": "/function record:install"}, "hoverEvent": {"action": "show_text", "contents": "執行 /function record:install"}}, " 指令安裝。"]

#冷卻
scoreboard players set @s rp_book_cooldown 4

#將UUID傳送至記錄用的函數 作為storage的唯一key
data modify storage record:data root.args.uuid set from entity @s UUID
data modify storage record:data root.args.key set value "store"
function record:position/store with storage record:data root.args

#發送訊息
title @s actionbar {"text": "已成功記錄！", "color": "gold"}
playsound entity.player.levelup master @s ~ ~ ~ .1 2.0