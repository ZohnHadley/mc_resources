execute if entity @n[tag=executor,scores={svm_ep.mana=..15}] run return 0
scoreboard players remove @n[tag=executor] svm_ep.mana 15

tag @s add target
execute summon item_display run function svm_ep:power/healing/helping_hand/setup
tag @s remove target
