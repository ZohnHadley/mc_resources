execute unless entity @s[scores={svm_ep.p.copy_ability_20_count=1..}] run return run scoreboard players set @s svm_ep.p.copy_withering_touch 0
scoreboard players set @s svm_ep.attack_entity_action 1


execute at @s run particle minecraft:ash ~ ~1 ~ 0.7 1.2 0.7 0.2 1