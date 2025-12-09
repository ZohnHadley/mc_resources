scoreboard players reset %total svm_ep.raycast_length

scoreboard players operation @s svm_ep.raycast_length = @s svm_ep.p.flora_harvest_max_length_prev
scoreboard players operation @s svm_ep.p.flora_harvest_max_length_prev < %flora_harvest_max_range svm_ep.world_settings
tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^1 run function svm_ep:power/flora/manipulation/raycast
tag @s remove executor
