execute unless entity @s[scores={svm_ep.p.copy_ability_15_count=1..}] run return run scoreboard players set @s svm_ep.p.copy_invisibility 0


effect give @s minecraft:invisibility 1 0 true


scoreboard players add @s svm_ep.p.copy_ability_15_drain 3
execute unless entity @s[scores={svm_ep.p.copy_ability_15_drain=100..}] run return 0
scoreboard players remove @s svm_ep.p.copy_ability_15_drain 100
scoreboard players remove @s svm_ep.p.copy_ability_15_count 1