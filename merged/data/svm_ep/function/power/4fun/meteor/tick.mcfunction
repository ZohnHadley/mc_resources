scoreboard players add @s svm_ep.using_move 1





scoreboard players add @s svm_ep.p.4fun_ability_02_delay 3
scoreboard players add %METEOR_RAIN svm_ep.world_settings 4

execute unless entity @s[scores={svm_ep.mana=10..}] run scoreboard players reset @s svm_ep.using_move
scoreboard players add @s svm_ep.mana_drain 250
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move