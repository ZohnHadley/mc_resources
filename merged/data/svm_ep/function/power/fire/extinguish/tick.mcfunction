scoreboard players add @s svm_ep.p.fire_ability_04_delay 1
scoreboard players set @s svm_ep.using_move 250
execute at @s anchored eyes positioned ^ ^ ^2.5 run function svm_ep:power/fire/extinguish/destroy
execute at @s anchored eyes positioned ^ ^ ^5 run function svm_ep:power/fire/extinguish/destroy
execute at @s anchored eyes positioned ^ ^ ^7 run function svm_ep:power/fire/extinguish/destroy

execute unless score @s svm_ep.mana matches 1.. run scoreboard players reset @s svm_ep.using_move
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
