execute store success score @s rp_inventory run clear @s book[custom_data~{record: true}] 0
execute if score @s rp_inventory matches 1 run return fail

execute store success score @s rp_inventory run clear @s compass[custom_data~{record: true}] 0
execute if score @s rp_inventory matches 1 run return fail

execute store success score @s rp_inventory run clear @s turtle_scute[custom_data~{record: true}] 0
execute if score @s rp_inventory matches 1 run return fail

#沒有物品
give @s book[custom_name='[{"text": "記錄位置 ", "italic": false}, {"text": "(", "color": "gray", "extra": [{"keybind": "key.use"}, ")"]}]', food={can_always_eat: true, eat_seconds: 86400, nutrition: 1, saturation: 1}, consumable={consume_seconds: 86400}, enchantment_glint_override=true, custom_data={record: true}]
give @s compass[custom_name='[{"text": "傳送到記錄點 ", "italic": false}, {"text": "(", "color": "gray", "extra": [{"keybind": "key.use"}, ")"]}]', food={can_always_eat: true, eat_seconds: 86400, nutrition: 1, saturation: 1}, consumable={consume_seconds: 86400}, lodestone_tracker={}, custom_data={record: true}]
give @s turtle_scute[custom_name='[{"text": "返回傳送前位置 ", "italic": false}, {"text": "(", "color": "gray", "extra": [{"keybind": "key.use"}, ")"]}]', food={can_always_eat: true, eat_seconds: 86400, nutrition: 1, saturation: 1}, consumable={consume_seconds: 86400}, enchantment_glint_override=true, custom_data={record: true}]