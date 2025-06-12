tellraw @s "==========設定=========="
function record:setting/output {name: "auto_give", text: "自動給予", description: "若玩家身上沒有任何物品\\n就會自動給予所有物品"}
function record:setting/output {name: "ground_store", text: "落地偵測(記錄)", description: "記錄位置時必須站在地上"}
function record:setting/output {name: "ground_teleport", text: "落地偵測(傳送)", description: "傳送時必須站在地上"}
tellraw @s "========================"