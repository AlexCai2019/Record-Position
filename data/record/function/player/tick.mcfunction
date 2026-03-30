#初始化
execute unless score @s rp_core matches 1 run function record:player/initial

#冷卻
scoreboard players remove @s[scores={rp_writable_book_cooldown=1..}] rp_writable_book_cooldown 1
scoreboard players remove @s[scores={rp_ender_pearl_cooldown=1..}] rp_ender_pearl_cooldown 1
scoreboard players remove @s[scores={rp_turtle_scute_cooldown=1..}] rp_turtle_scute_cooldown 1

#自動給予
execute if score #auto_give rp_core matches 1 run function record:player/auto_give

#設定
scoreboard players enable @s[gamemode=creative] rp_setting
execute if score @s rp_setting matches 1.. run function record:setting/click
scoreboard players reset @s[gamemode=!creative] rp_setting