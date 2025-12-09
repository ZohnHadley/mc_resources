execute at @s run tp @s ^ ^ ^0.33
execute at @s if entity @e[tag=!same_id,dx=1,type=!#svm_ep:technical] run tag @s add explode
execute at @s if entity @e[tag=!same_id,distance=..1,type=!#svm_ep:technical] run tag @s add explode
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add explode
