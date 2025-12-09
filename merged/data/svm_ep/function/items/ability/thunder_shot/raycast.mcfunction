scoreboard players add @s svm_ep.thunder_shot_length 1
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
execute if entity @e[type=!#svm_ep:technical,dx=0,tag=!executor] run tag @s add end_raycast
execute unless entity @s[distance=..60] run tag @s add end_raycast
execute as @s[tag=end_raycast] summon marker run function svm_ep:items/ability/thunder_shot/place

execute as @s[tag=!end_raycast] positioned ^ ^ ^0.3 run function svm_ep:items/ability/thunder_shot/raycast