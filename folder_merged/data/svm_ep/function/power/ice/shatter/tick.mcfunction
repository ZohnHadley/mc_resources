scoreboard players add @s svm_ep.p.ice_ability_03_delay 2
scoreboard players set @s svm_ep.using_move 250
execute at @s anchored eyes positioned ^ ^ ^2.5 run function svm_ep:power/ice/shatter/destroy
execute at @s anchored eyes positioned ^ ^ ^5 run function svm_ep:power/ice/shatter/destroy
execute at @s anchored eyes positioned ^ ^ ^7 run function svm_ep:power/ice/shatter/destroy

execute unless score @s svm_ep.mana matches 1.. run scoreboard players reset @s svm_ep.using_move
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
scoreboard players set @s[scores={svm_ep.p.ice_ability_03_delay=40..}] svm_ep.p.ice_ability_03_delay 40
