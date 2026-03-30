execute if score @s rp_setting matches 1 run function record:setting

execute if score @s rp_setting matches 2 run function record:setting/input {name: "auto_give"}
execute if score @s rp_setting matches 3 run function record:setting/input {name: "ground_store"}
execute if score @s rp_setting matches 4 run function record:setting/input {name: "ground_teleport"}

scoreboard players set @s rp_setting 0