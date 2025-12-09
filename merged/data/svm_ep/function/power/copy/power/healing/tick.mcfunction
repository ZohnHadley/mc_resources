execute as @s[scores={svm_ep.using_move=..2095}] unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
execute unless entity @s[scores={svm_ep.using_move=1..}] unless predicate svm_ep:holding_ability run return run function svm_ep:power/healing/heal/heal

execute as @s[scores={svm_ep.using_move=2080..}] run return 0

tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^2 as @n[distance=..3,tag=!executor,type=!#svm_ep:technical] run tag @s add target
execute as @n[tag=target] run function svm_ep:power/healing/heal/heal
execute as @n[tag=target] run scoreboard players reset @n[tag=executor] svm_ep.using_move
execute as @n[tag=target] run return run tag @s remove target
tag @s remove executor

scoreboard players add @s svm_ep.p.copy_ability_34_delay 40
function svm_ep:power/healing/heal/heal
effect give @s minecraft:instant_health 1 1 true
effect give @s minecraft:saturation 1 2 true

scoreboard players reset @s svm_ep.using_move