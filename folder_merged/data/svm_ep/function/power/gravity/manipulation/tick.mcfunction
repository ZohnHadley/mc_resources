scoreboard players add @s svm_ep.using_move 1
execute unless entity @e[tag=svm_ep.gravity_can_manipulate] run scoreboard players reset @s svm_ep.using_move
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
execute if entity @e[tag=svm_ep.gravity_can_manipulate] at @s run return run function svm_ep:power/gravity/manipulation/success
