scoreboard players set @s svm_ep.raycast_length 50
tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^0.1 run function svm_ep:power/water/manipulation/drown/raycast
tag @s remove executor