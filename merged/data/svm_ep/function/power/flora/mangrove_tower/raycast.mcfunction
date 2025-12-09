scoreboard players add @s svm_ep.raycast_length 1
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast1
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
execute if entity @e[type=!#svm_ep:technical,dx=0,tag=!executor] run tag @s add end_raycast1
execute if entity @e[type=!#svm_ep:technical,dx=0,tag=!executor] run tag @s add end_raycast
execute unless entity @s[distance=..60] run tag @s add end_raycast
execute as @s[tag=end_raycast1] positioned ~ ~-1 ~ summon marker run function svm_ep:power/flora/mangrove_tower/place

execute as @s[tag=!end_raycast] positioned ^ ^ ^0.3 run function svm_ep:power/flora/mangrove_tower/raycast