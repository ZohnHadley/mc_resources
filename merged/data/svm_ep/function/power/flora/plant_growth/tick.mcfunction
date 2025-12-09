scoreboard players add @s svm_ep.using_move 1
scoreboard players add @s svm_ep.mana_drain 25
scoreboard players add @s svm_ep.p.flora_ability_01_delay 1

execute unless predicate svm_ep:holding_ability run return run scoreboard players reset @s svm_ep.using_move
execute as @s[scores={svm_ep.mana=..1}] run return run scoreboard players reset @s svm_ep.using_move

scoreboard players reset %DISTANCE svm_ep.numbers
scoreboard players operation @s svm_ep.raycast_length = %flora_plant_growth_range_default svm_ep.world_settings
scoreboard players operation @s svm_ep.raycast_length += @s svm_ep.p.flora_plant_growth_range.lvl
#
execute at @s anchored eyes positioned ^ ^ ^0.3 run function svm_ep:power/flora/plant_growth/raycast
