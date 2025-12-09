execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
execute unless entity @s[distance=..95] run tag @s add end_raycast
execute if entity @e[tag=!executor,dx=0,type=!#svm_ep:technical] run tag @s add end_raycast
execute as @s[tag=end_raycast] run function svm_ep:power/void/manipulation/end
execute as @s[tag=!end_raycast] positioned ^ ^ ^0.2 run function svm_ep:power/void/manipulation/raycast