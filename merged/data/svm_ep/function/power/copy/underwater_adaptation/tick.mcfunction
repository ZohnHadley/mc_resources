execute at @s anchored eyes positioned ^ ^ ^ unless predicate svm_ep:water run return 0
execute unless entity @s[scores={svm_ep.p.copy_ability_03_count=1..}] run return run scoreboard players set @s svm_ep.p.copy_underwater_adaptation 0


effect give @s minecraft:water_breathing 1 0 true


scoreboard players add @s svm_ep.p.copy_ability_03_drain 5
execute unless entity @s[scores={svm_ep.p.copy_ability_03_drain=100..}] run return 0
scoreboard players remove @s svm_ep.p.copy_ability_03_drain 100
scoreboard players remove @s svm_ep.p.copy_ability_03_count 1