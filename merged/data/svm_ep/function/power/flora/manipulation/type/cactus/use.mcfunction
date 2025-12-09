setblock ~ ~ ~ air destroy
execute as @e[type=item,distance=..1] if items entity @s contents minecraft:cactus run kill @s

execute positioned ^ ^ ^150 run function svm_ep:power/flora/cacti_grenade/w_motion/shoot
execute as @n[type=snowball] run tp @s ~ ~ ~
scoreboard players set @s svm_ep.p.flora_manipulation_type 80