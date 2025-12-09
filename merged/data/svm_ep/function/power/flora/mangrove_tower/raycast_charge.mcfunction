execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast1
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
execute if entity @e[type=!#svm_ep:technical,dx=0,tag=!executor] run tag @s add end_raycast1
execute if entity @e[type=!#svm_ep:technical,dx=0,tag=!executor] run tag @s add end_raycast
execute unless entity @s[distance=..60] run tag @s add end_raycast
execute as @s[tag=end_raycast1] run particle minecraft:dust{color:[0.2f,0.1f,0.1f],scale:1.5} ~ ~ ~ 1 0.5 1 0 4 force @s

execute as @s[tag=!end_raycast] positioned ^ ^ ^0.3 run function svm_ep:power/flora/mangrove_tower/raycast_charge