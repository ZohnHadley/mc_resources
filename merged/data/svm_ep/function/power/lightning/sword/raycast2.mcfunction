execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
execute if entity @e[type=!#svm_ep:technical,dx=0,tag=!executor] run tag @s add end_raycast
execute unless entity @s[distance=..4.25] run tag @s add end_raycast
execute as @s[tag=end_raycast] run function svm_ep:power/lightning/sword/end2
#as @e[dx=0,tag=!executor,type=!#svm_ep:technical,tag=!hitby]
execute as @s[tag=!end_raycast] positioned ^ ^ ^0.15 run function svm_ep:power/lightning/sword/raycast2