scoreboard players add @s svm_ep.p.copy_ability_14_delay 1

execute at @s anchored eyes positioned ^-0.5 ^ ^0.1 run particle entity_effect{color:[0.89,0.84,1.0,1.0]} ~ ~-1 ~ 0 0 0 0 0
execute at @s anchored eyes positioned ^0.5 ^ ^0.1 run particle entity_effect{color:[0.89,0.84,1.0,1.0]} ~ ~-1 ~ 0 0 0 0 0


execute unless predicate svm_ep:holding_ability run return run function svm_ep:power/copy/fangs_of_the_mansion/summon

execute unless entity @s[scores={svm_ep.using_move=870..}] run return run function svm_ep:power/copy/fangs_of_the_mansion/summon

