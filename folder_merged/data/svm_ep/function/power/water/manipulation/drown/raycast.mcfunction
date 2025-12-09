scoreboard players remove @s svm_ep.raycast_length 1

execute unless block ~ ~ ~ water run scoreboard players remove @s svm_ep.raycast_length 5

execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.raycast_length -1
execute unless block ^ ^ ^0.25 #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.raycast_length -1
execute if entity @e[type=!#svm_ep:technical,tag=!executor,dx=0] run scoreboard players set @s svm_ep.raycast_length -2
execute if entity @e[type=!#svm_ep:technical,tag=!executor,distance=..0.5] run scoreboard players set @s svm_ep.raycast_length -2
execute if predicate svm_ep:chance/33_percent run particle minecraft:bubble_pop ~ ~ ~ 1 1 1 0.1 1

execute as @s[scores={svm_ep.raycast_length=1..}] positioned ^ ^ ^0.25 run return run function svm_ep:power/water/manipulation/drown/raycast
function svm_ep:power/water/manipulation/drown/end