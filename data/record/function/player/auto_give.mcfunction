#如果身上沒有書、沒有羅盤且沒有鱗甲
execute store success score @s rp_inventory run clear @s poisonous_potato[item_model="writable_book", custom_data~{record: true}] 0
execute if score @s rp_inventory matches 1 run return fail

execute store success score @s rp_inventory run clear @s poisonous_potato[item_model="ender_pearl", custom_data~{record: true}] 0
execute if score @s rp_inventory matches 1 run return fail

execute store success score @s rp_inventory run clear @s poisonous_potato[item_model="turtle_scute", custom_data~{record: true}] 0
execute if score @s rp_inventory matches 1 run return fail

#沒有物品
function record:player/give