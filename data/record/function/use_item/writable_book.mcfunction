advancement revoke @s only record:use_item/writable_book

#沒有安裝就沒有後面的
execute unless score #install rp_core matches 1 run return run tellraw @s ["<", {text: "記錄位置", color: "blue"}, "> 尚未安裝資料包！\n<", {text: "記錄位置", color: "blue"}, "> 請使用 ", {text: "/function record:install", click_event: {action: "run_command", command: "/function record:install"}, hover_event: {action: "show_text", value: ["執行", {text: "安裝", color: "green"}]}}, " 指令安裝。"]

#冷卻
scoreboard players set @s rp_writable_book_cooldown 4

#落地偵測
execute if score #ground_store rp_core matches 1 unless predicate record:on_ground run return run function record:player/not_on_ground

#將UUID傳送至記錄用的函數 作為storage的唯一key
data modify storage record:data root.args.uuid set from entity @s UUID
data modify storage record:data root.args.key set value "store"
function record:position/store with storage record:data root.args

#發送訊息
title @s actionbar {text: "已成功記錄！", color: "gold"}
playsound entity.player.levelup master @s ~ ~ ~ .1 2.0