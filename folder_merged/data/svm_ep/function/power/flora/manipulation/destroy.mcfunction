scoreboard players operation @s svm_ep.p.flora_manipulation_max_length_prev = %total svm_ep.raycast_length
scoreboard players add @s svm_ep.p.flora_manipulation_max_length_prev 4

execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:happy_villager ~ ~ ~ 0.4 0.4 0.4 0.1 4
scoreboard players set @s svm_ep.raycast_length -1
scoreboard players add @s svm_ep.mana_drain 145
