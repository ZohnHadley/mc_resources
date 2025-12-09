execute unless entity @s[scores={svm_ep.using_move=1..}] run return 0
execute unless entity @e[tag=svm_ep.water_droplet,distance=..85] run return run scoreboard players reset @s svm_ep.using_move
scoreboard players add @s svm_ep.mana_drain 6
scoreboard players add @s svm_ep.used_move 1
scoreboard players add @s svm_ep.p.water_ability_04_delay 1
execute unless entity @s[scores={svm_ep.mana=1..}] run scoreboard players reset @s svm_ep.using_move
tag @s add executor
scoreboard players set @s svm_ep.raycast_length 100
execute anchored eyes positioned ^ ^0.2 ^1 run function svm_ep:power/water/manipulation/droplet/raycast
tag @s remove executor
tag @s remove end_raycast
