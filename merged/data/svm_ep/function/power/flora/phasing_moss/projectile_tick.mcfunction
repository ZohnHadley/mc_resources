tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[tag=svm_ep.flora_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id


execute unless entity @e[tag=same_id] run kill @s



execute as @n[tag=same_id] at @s run function svm_ep:power/flora/phasing_moss/tick


tag @s remove executor
tag @e remove same_id
