scoreboard players add @s svm_ep.mana_drain 225
scoreboard players add @s svm_ep.p.void_step_charge 4
scoreboard players add @s svm_ep.using_move 1
execute as @s[scores={svm_ep.mana=..3}] run scoreboard players reset @s svm_ep.using_move
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
execute unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/void/step/start
scoreboard players add @s svm_ep.p.void_ability_04_delay 3