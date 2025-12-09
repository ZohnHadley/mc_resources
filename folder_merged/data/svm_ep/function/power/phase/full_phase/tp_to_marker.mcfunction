execute as @e[type=minecraft:marker,tag=svm_ep.phase_marker] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tp @n[tag=executor] @s
