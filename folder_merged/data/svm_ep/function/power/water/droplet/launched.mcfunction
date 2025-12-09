execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:2}} run scoreboard players remove @s svm_ep.lifetime 1
execute at @s unless block ~ ~ ~ water run rotate @s ~ ~2.5
execute at @s run tp @s ^ ^ ^0.4
execute at @s run tag @e[tag=!same_id,distance=..0.5,type=!#svm_ep:technical] add hitby
execute at @s run tag @e[tag=!same_id,dx=0,type=!#svm_ep:technical] add hitby
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run return run function svm_ep:power/water/droplet/end
execute at @s run tp @s ^ ^ ^0.4
execute at @s run tag @e[tag=!same_id,distance=..0.5,type=!#svm_ep:technical] add hitby
execute at @s run tag @e[tag=!same_id,dx=0,type=!#svm_ep:technical] add hitby
