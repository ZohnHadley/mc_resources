tag @s remove hitby
execute if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run return 0
#IF SCORES DO NOT MATCH
tag @n[tag=executor] add hit
execute as @e[type=!#svm_ep:technical] if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run tag @s add same_id
effect give @s minecraft:slowness 1 1 true
damage @s 3.5 svm_ep:no_cooldown_projectile by @n[tag=same_id]
tag @e remove same_id
