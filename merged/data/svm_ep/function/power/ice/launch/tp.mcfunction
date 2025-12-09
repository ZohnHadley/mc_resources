execute at @s[tag=!hit] run tp @s ^ ^ ^0.9 ~ ~0.5
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add hit
execute at @s if entity @e[tag=!same_id,type=!#svm_ep:technical,dx=2] run tag @s add hit
execute at @s if entity @e[tag=!same_id,type=!#svm_ep:technical,distance=..2.25] run tag @s add hit