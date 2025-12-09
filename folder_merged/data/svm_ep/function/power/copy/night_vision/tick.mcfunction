execute unless entity @s[scores={svm_ep.p.copy_ability_04_count=1..}] run return run scoreboard players set @s svm_ep.p.copy_night_vision 0


effect give @s minecraft:night_vision 30 0 true


scoreboard players add @s svm_ep.p.copy_ability_04_drain 1
execute unless entity @s[scores={svm_ep.p.copy_ability_04_drain=100..}] run return 0
scoreboard players remove @s svm_ep.p.copy_ability_04_drain 100
scoreboard players remove @s svm_ep.p.copy_ability_04_count 1