execute at @s run tp @s ^ ^ ^0.9 ~ ~0.3
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add hit
execute at @s run tag @e[tag=!same_id,type=!#svm_ep:technical,dx=0] add hitby
execute at @s run tag @e[tag=!same_id,type=!#svm_ep:technical,distance=..0.5] add hitby

particle minecraft:item{item:ice} ~ ~ ~ 0.1 0.1 0.1 0.3 1
execute if predicate svm_ep:chance/33_percent run particle minecraft:snowflake ~ ~ ~ 0.2 0.2 0.2 .3 1