tag @s add executor
execute at @s as @e[scores={svm_ep.entity_id=1..},distance=..100] if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.dimension_brought_by_id run return run tag @n[tag=executor] remove executor


scoreboard players operation @s svm_ep.previous_dimension = @s svm_ep.dimension_pre.dimension_gate
function svm_ep:system/dimension/back_to_previous

scoreboard players reset @s svm_ep.dimension_brought_by_id
tag @s remove executor
