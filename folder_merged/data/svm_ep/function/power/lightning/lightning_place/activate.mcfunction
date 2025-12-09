tag @s add executor

execute as @e[tag=svm_ep.lightning_place] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
scoreboard players reset @s svm_ep.p.lightning_placed_count
tag @e[tag=same_id] add svm_ep.lightning_ready

tag @s remove executor
tag @e remove same_id