execute store success score @s rp_inventory run clear @s book[custom_data~{record: true}] 0
execute if score @s rp_inventory matches 1 run return fail

execute store success score @s rp_inventory run clear @s compass[custom_data~{record: true}] 0
execute if score @s rp_inventory matches 1 run return fail

execute store success score @s rp_inventory run clear @s turtle_scute[custom_data~{record: true}] 0
execute if score @s rp_inventory matches 1 run return fail

#沒有物品
function record:player/give_item