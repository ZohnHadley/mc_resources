
scoreboard players add @s svm_ep.mana 1
scoreboard players remove @s svm_ep.mana_charge 100
execute as @s[scores={svm_ep.mana_charge=100..}] unless score @s svm_ep.mana >= @s svm_ep.mana_max run function svm_ep:mana/increase
