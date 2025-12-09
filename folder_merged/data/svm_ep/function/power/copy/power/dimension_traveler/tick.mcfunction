scoreboard players add @s svm_ep.using_move 1
execute if predicate svm_ep:holding_ability run scoreboard players add @s svm_ep.charge_length 1
execute as @s[scores={svm_ep.charge_length=10..}] run function svm_ep:power/copy/power/dimension_traveler/switch

execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
execute unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/dimension_traveler/gate/shoot