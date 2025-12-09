execute as @e[type=minecraft:marker,tag=svm_ep.phase_marker] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
tp @s @e[tag=same_id,limit=1]

tag @e[type=minecraft:marker] remove same_id
