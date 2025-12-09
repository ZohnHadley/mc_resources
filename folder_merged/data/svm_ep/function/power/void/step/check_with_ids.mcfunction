execute as @e[type=minecraft:marker,tag=svm_ep.phase_marker,distance=..20] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id

execute unless entity @e[tag=same_id] run function svm_ep:power/void/step/tp_to_marker

tag @e[type=minecraft:marker] remove same_id
