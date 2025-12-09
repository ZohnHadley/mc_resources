execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
scoreboard players add @s svm_ep.p.healing_ability_03_delay 1

execute as @s[scores={svm_ep.using_move=280}] run return run function svm_ep:power/healing/marking/toggle
execute unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/healing/marking/on_mob
