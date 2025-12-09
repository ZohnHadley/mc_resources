execute if entity @n[tag=executor,scores={svm_ep.mana=..10}] run return 0
scoreboard players remove @n[tag=executor] svm_ep.mana 10

tag @s add target
execute summon item_display run function svm_ep:power/healing/health_spread/setup
tag @s remove target
