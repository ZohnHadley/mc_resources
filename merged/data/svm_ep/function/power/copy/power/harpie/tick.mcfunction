function svm_ep:power/harpie/movement/tick

scoreboard players add @s svm_ep.p.copy_ability_29_drain 1
execute unless entity @s[scores={svm_ep.p.copy_ability_29_drain=250..}] run return 0
scoreboard players remove @s svm_ep.p.copy_ability_29_drain 250
scoreboard players remove @s svm_ep.p.copy_ability_29_count 1