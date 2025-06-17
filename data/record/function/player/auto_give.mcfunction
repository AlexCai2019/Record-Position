#如果身上沒有書、沒有羅盤且沒有鱗甲
execute store success score @s rp_inventory run clear @s poisonous_potato[item_model="writable_book", custom_data~{record: true}] 0
execute if score @s rp_inventory matches 1 run return fail

execute store success score @s rp_inventory run clear @s poisonous_potato[item_model="ender_pearl", custom_data~{record: true}] 0
execute if score @s rp_inventory matches 1 run return fail

execute store success score @s rp_inventory run clear @s poisonous_potato[item_model="turtle_scute", custom_data~{record: true}] 0
execute if score @s rp_inventory matches 1 run return fail

#沒有物品
give @s poisonous_potato[item_model="writable_book", item_name=["記錄位置 ", {text: "(", color: "gray", extra: [{keybind: "key.use"}, ")"]}], !food, consumable={consume_seconds: 86400.0F}, enchantment_glint_override=true, custom_data={record: true}]
give @s poisonous_potato[item_model="ender_pearl", item_name=["傳送到記錄點 ", {text: "(", color: "gray", extra: [{keybind: "key.use"}, ")"]}], !food, consumable={consume_seconds: 86400.0F}, enchantment_glint_override=true, custom_data={record: true}]
give @s poisonous_potato[item_model="turtle_scute", item_name=["返回傳送前位置 ", {text: "(", color: "gray", extra: [{keybind: "key.use"}, ")"]}], !food, consumable={consume_seconds: 86400.0F}, enchantment_glint_override=true, custom_data={record: true}]