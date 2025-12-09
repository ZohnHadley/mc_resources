scoreboard players add @s svm_ep.p.copy_ability_13_delay 1


execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move

execute unless entity @s[scores={svm_ep.using_move=1..}] at @s run return run function svm_ep:power/copy/teleportation/tp

execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.33 0.7 0.33 0.25 3

execute as @s[scores={svm_ep.using_move=780..}] run return 0
scoreboard players reset @s svm_ep.using_move
scoreboard players add @s svm_ep.p.copy_ability_13_delay 60

execute at @s run function svm_ep:power/copy/teleportation/spread
