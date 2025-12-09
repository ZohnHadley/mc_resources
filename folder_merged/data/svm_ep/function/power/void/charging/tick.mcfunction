scoreboard players add @s svm_ep.mana_drain 180
scoreboard players add @s svm_ep.used_move 4
scoreboard players add @s svm_ep.using_move 1
execute as @s[scores={svm_ep.mana=..2}] run scoreboard players reset @s svm_ep.using_move
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move