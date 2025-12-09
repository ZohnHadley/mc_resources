execute run tp @s ^ ^ ^0.45 ~ ~0.07


particle minecraft:smoke ~ ~ ~ 0 0 0 0.3 1
execute as @e[tag=!same_id,dx=0,type=!#svm_ep:technical] run tag @s add hit
execute as @e[tag=!same_id,distance=..1.5,type=!#svm_ep:technical] run tag @s add hit
execute if entity @e[distance=..10,tag=hit,type=!#svm_ep:technical] run tag @s add hit
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add hit
