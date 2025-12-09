execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
execute unless entity @s[distance=..15] run tag @s add end_raycast

execute if block ~ ~ ~ #svm_ep:plant_growth_interracts run function svm_ep:power/flora/crop_growth/identify

execute as @s[tag=!end_raycast] positioned ^ ^ ^0.1 run return run function svm_ep:power/copy/power/flora/raycast
execute as @s[scores={svm_ep.p.flora_ability_09_delay=1}] run scoreboard players remove @s svm_ep.p.copy_ability_24_count 1
