scoreboard players add @s svm_ep.p.water_ability_03_delay 1
scoreboard players set @s svm_ep.using_move 150
execute at @s anchored eyes positioned ^ ^ ^1.5 run function svm_ep:power/water/collect/destroy
execute at @s anchored eyes positioned ^ ^ ^3.5 run function svm_ep:power/water/collect/destroy

execute unless score @s svm_ep.mana matches 1.. run scoreboard players reset @s svm_ep.using_move
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
