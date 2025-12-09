execute if entity @e[dx=0,tag=same_id] run tag @s add end_raycast
execute unless entity @s[distance=..60] run tag @s add end_raycast
execute positioned ~ ~0.85 ~ run function svm_ep:power/flora/flora_particle
execute as @s[tag=!end_raycast] positioned ^ ^ ^0.45 run function svm_ep:power/flora/swing/raycast