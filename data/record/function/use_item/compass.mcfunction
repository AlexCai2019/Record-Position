advancement revoke @s only record:use_item/compass

#沒有安裝就沒有後面的
execute unless score #install rp_core matches 1 run return run tellraw @s ["<", {"text": "記錄位置", "color": "blue"}, "> 尚未安裝資料包！\n<", {"text": "記錄位置", "color": "blue"}, "> 請使用 ", {"text": "/function record:install", "clickEvent": {"action": "run_command", "value": "/function record:install"}, "hoverEvent": {"action": "show_text", "contents": "執行 /function record:install"}}, " 指令安裝。"]

#冷卻
scoreboard players set @s rp_compass_cooldown 4

#落地偵測
execute if score #ground_store rp_core matches 1 unless predicate record:on_ground run return run function record:player/not_on_ground

#先記錄下現在的位置
data modify storage record:data root.args.uuid set from entity @s UUID
data modify storage record:data root.args.key set value "before"
function record:position/store with storage record:data root.args

#再傳送回去
data modify storage record:data root.args.key set value "store"
function record:position/get with storage record:data root.args