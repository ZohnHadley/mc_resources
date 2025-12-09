effect give @s minecraft:slowness 1 1 true
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
scoreboard players add @s svm_ep.p.healing_ability_02_delay 1

execute as @s[scores={svm_ep.using_move=160}] run return run function svm_ep:power/healing/regenerational_aura/toggle
execute unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/healing/regenerational_aura/base
