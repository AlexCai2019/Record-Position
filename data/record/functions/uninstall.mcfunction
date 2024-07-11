tellraw @s ["<", {"text": "記錄位置", "color": "blue"}, "> 謝謝使用記錄位置資料包"]
clear @a book[custom_data={record: true}]
clear @a compass[custom_data={record: true}]
data remove storage record:data root