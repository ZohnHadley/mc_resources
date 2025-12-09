execute at @s run function svm_ep:power/fire/blaze/tick

scoreboard players add @s svm_ep.p.copy_ability_31_drain 5
execute unless entity @s[scores={svm_ep.p.copy_ability_31_drain=100..}] run return 0
scoreboard players remove @s svm_ep.p.copy_ability_31_drain 100
scoreboard players remove @s svm_ep.p.copy_ability_31_count 1