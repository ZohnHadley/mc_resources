execute if predicate svm_ep:holding_ability run scoreboard players add @s svm_ep.using_move 1

execute at @s anchored eyes positioned ^ ^ ^2.4 run function svm_ep:power/flora/bush/place
execute at @s unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
scoreboard players add @s svm_ep.p.flora_ability_11_delay 2
scoreboard players set @s[scores={svm_ep.p.flora_ability_11_delay=250}] svm_ep.p.flora_ability_11_delay 150
scoreboard players reset @s[scores={svm_ep.p.flora_ability_11_delay=250}] svm_ep.using_move
