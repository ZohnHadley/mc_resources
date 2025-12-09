effect give @s minecraft:fire_resistance 1 0 true
function svm_ep:system/get_fire
execute unless entity @s[scores={svm_ep.p.copy_ability_06_count=1..}] run return run scoreboard players set @s svm_ep.p.copy_fire_adaptation 0
execute unless entity @s[scores={fire=1..}] run return 0




scoreboard players add @s svm_ep.p.copy_ability_06_drain 12
execute unless entity @s[scores={svm_ep.p.copy_ability_06_drain=100..}] run return 0
scoreboard players remove @s svm_ep.p.copy_ability_06_drain 100
scoreboard players remove @s svm_ep.p.copy_ability_06_count 1