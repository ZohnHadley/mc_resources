scoreboard players set @s svm_ep.raycast_length 10
scoreboard players operation @s svm_ep.charge_length /= %2 svm_ep.numbers
execute at @s anchored eyes positioned ^ ^ ^2.5 summon marker run function svm_ep:power/flora/mangrove_tower/place
tag @s add end_raycast1