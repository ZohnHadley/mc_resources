execute at @s run tp @s ^ ^ ^0.43
execute at @s as @e[tag=!same_id,dx=1,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[tag=!same_id,distance=..4,type=!#svm_ep:technical] run tag @s add hitby
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add explode
