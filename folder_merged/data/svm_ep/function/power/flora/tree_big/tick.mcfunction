scoreboard players add @s svm_ep.p.flora_ability_01_delay 1
scoreboard players add @s[scores={svm_ep.using_move=..1401}] svm_ep.using_move 1

effect give @s minecraft:slowness 1 6 true


scoreboard players set @s svm_ep.p.flora_tree_range 20

tag @s add executor

execute at @s[scores={svm_ep.using_move=..1402}] anchored eyes run function svm_ep:power/flora/tree_place/raycast
tag @s remove executor
scoreboard players reset @s[scores={svm_ep.p.flora_tree_range=..-1}] svm_ep.using_move






