advancement revoke @s only record:use_item/book
#沒有安裝就沒有後面的
execute unless data storage record:data root.install run return fail

#由於陣列不能傳巨集 所以必須存到{}裡
data modify storage record:data root.uuid.0 set from entity @s UUID[0]
data modify storage record:data root.uuid.1 set from entity @s UUID[1]
data modify storage record:data root.uuid.2 set from entity @s UUID[2]
data modify storage record:data root.uuid.3 set from entity @s UUID[3]

#將uuid傳送至記錄用的函數 作為storage的唯一key
function record:position/store with storage record:data root.uuid

#發送訊息
title @s actionbar {"text": "已成功記錄！", "color": "gold"}
playsound entity.player.levelup master @s ~ ~ ~ .1 2.0