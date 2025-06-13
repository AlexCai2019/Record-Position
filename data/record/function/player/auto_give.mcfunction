#如果身上沒有書、沒有羅盤且沒有鱗甲
execute store success score @s rp_inventory run clear @s book[custom_data~{record: true}] 0
execute if score @s rp_inventory matches 1 run return fail

execute store success score @s rp_inventory run clear @s compass[custom_data~{record: true}] 0
execute if score @s rp_inventory matches 1 run return fail

execute store success score @s rp_inventory run clear @s turtle_scute[custom_data~{record: true}] 0
execute if score @s rp_inventory matches 1 run return fail

#沒有物品
give @s book[item_name='["記錄位置 ", {"text": "(", "color": "gray", "extra": [{"keybind": "key.use"}, ")"]}]', consumable={consume_seconds: 86400.0F}, !enchantments, enchantment_glint_override=true, custom_data={record: true}]
give @s compass[custom_name='[{"text": "傳送到記錄點 ", "italic": false}, {"text": "(", "color": "gray", "extra": [{"keybind": "key.use"}, ")"]}]', consumable={consume_seconds: 86400.0F}, lodestone_tracker={}, !enchantments, custom_data={record: true}]
give @s turtle_scute[item_name='["返回傳送前位置 ", {"text": "(", "color": "gray", "extra": [{"keybind": "key.use"}, ")"]}]', consumable={consume_seconds: 86400.0F}, enchantment_glint_override=true, custom_data={record: true}]