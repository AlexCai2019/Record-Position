#初始化
execute unless score @s rp_core matches 1 run function record:player/initial

#冷卻
scoreboard players remove @s[scores={rp_book_cooldown=1..}] rp_book_cooldown 1
scoreboard players remove @s[scores={rp_compass_cooldown=1..}] rp_compass_cooldown 1
scoreboard players remove @s[scores={rp_turtle_scute_cooldown=1..}] rp_turtle_scute_cooldown 1

#自動給予
execute if score #auto_give rp_core matches 1 run function record:player/auto_give