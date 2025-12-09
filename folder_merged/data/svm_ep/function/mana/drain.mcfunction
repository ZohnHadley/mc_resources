
scoreboard players remove @s svm_ep.mana 1
scoreboard players remove @s svm_ep.mana_drain 100
execute as @s[scores={svm_ep.mana_drain=100..}] run function svm_ep:mana/drain