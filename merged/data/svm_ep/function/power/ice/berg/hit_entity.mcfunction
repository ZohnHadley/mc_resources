tag @s add executor


execute as @e[scores={svm_ep.entity_id=1..}] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id

execute as @e[tag=hitby,tag=!same_id] run function svm_ep:power/ice/berg/hitby

tag @s remove executor
tag @e remove hitby