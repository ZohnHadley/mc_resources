scoreboard players add @s svm_ep.p.water_ability_06_delay 1
scoreboard players add @s svm_ep.using_move 1
scoreboard players add @s svm_ep.used_move 1
scoreboard players add @s[scores={svm_ep.used_move=..300}] svm_ep.used_move 1
scoreboard players add @s[scores={svm_ep.used_move=..600}] svm_ep.used_move 1
execute unless score @s svm_ep.mana matches 1.. run scoreboard players reset @s svm_ep.using_move
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move

#execute at @s anchored eyes positioned ^ ^ ^2.5 run function svm_ep:power/water/rising/fill
execute at @s anchored eyes positioned ^ ^ ^4.5 run function svm_ep:power/water/rising/fill

