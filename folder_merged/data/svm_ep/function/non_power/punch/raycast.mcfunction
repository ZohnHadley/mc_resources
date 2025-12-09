execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
execute if entity @e[type=!#svm_ep:technical,dx=0,tag=!executor] run tag @s add end_raycast
execute unless entity @s[distance=..3] run tag @s add end_raycast
execute as @s[tag=end_raycast] run function svm_ep:non_power/punch/end
execute as @s[tag=!end_raycast] positioned ^ ^ ^0.15 run function svm_ep:non_power/punch/raycast