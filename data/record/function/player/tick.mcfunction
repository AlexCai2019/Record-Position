execute unless score @s rp_core matches 1 run function record:player/initial

scoreboard players remove @s[scores={rp_book_cooldown=1..}] rp_book_cooldown 1
scoreboard players remove @s[scores={rp_compass_cooldown=1..}] rp_compass_cooldown 1
scoreboard players remove @s[scores={rp_glowstone_cooldown=1..}] rp_glowstone_cooldown 1