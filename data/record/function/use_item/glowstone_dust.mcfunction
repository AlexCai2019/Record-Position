advancement revoke @s only record:use_item/glowstone_dust

#沒有安裝就沒有後面的
execute unless score #install rp_core matches 1 run return run tellraw @s ["<", {"text": "記錄位置", "color": "blue"}, "> 尚未安裝資料包！\n<", {"text": "記錄位置", "color": "blue"}, "> 請使用 ", {"text": "/function record:install", "clickEvent": {"action": "run_command", "value": "/function record:install"}, "hoverEvent": {"action": "show_text", "contents": "執行 /function record:install"}}, " 指令安裝。"]

#冷卻
scoreboard players set @s rp_glowstone_cooldown 4

#重生點
spawnpoint @s ~ ~ ~

#發送訊息
title @s actionbar {"text": "已成功設定！", "color": "yellow"}
playsound entity.experience_orb.pickup master @s ~ ~ ~ .1 2.0