tp @s ~ ~-0.5 ~
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox positioned ~ ~1 ~ align y run tp @s ~ ~ ~
execute at @s run tp @s ~ ~ ~ facing entity @n[distance=0.01..3,type=!#svm_ep:technical] feet
execute at @s run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 5 100