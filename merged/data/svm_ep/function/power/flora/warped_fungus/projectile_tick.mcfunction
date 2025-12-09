tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[tag=svm_ep.flora_user,distance=..160] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id


execute unless entity @e[tag=same_id] run kill @s

execute if predicate svm_ep:chance/5_percent run particle minecraft:dust{color:[0f,1f,0.8f],scale:1f} ~ ~0.4 ~ 0.2 0.2 0.2 0 5
#particle minecraft:dust{color:[0f,1f,0.8f],scale:2f} ~ ~0.1 ~ 0 0 0 0 1
#execute at @s run particle minecraft:dust{color:[1f,0f,0.8f],scale:1f} ~ ~0.1 ~ 0 0 0 0 1
execute as @e[tag=!same_id,dx=0,type=!#svm_ep:technical] at @s run function svm_ep:power/flora/warped_fungus/in_range
execute if entity @e[tag=!same_id,dx=0,type=!#svm_ep:technical] run function svm_ep:power/flora/warped_fungus/kill

tag @s remove executor
tag @e remove same_id
kill @s[scores={svm_ep.lifetime=800..}]
