tag @s add executor
scoreboard players add @s svm_ep.lifetime 1

execute as @e[tag=svm_ep.flora_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
#execute at @s run function svm_ep:power/flora/flora_particle

execute at @s run particle minecraft:cherry_leaves
execute at @s run particle minecraft:dust{color:[1f,0.4f,0.6f],scale:1f} ~ ~ ~ 0.1 0.1 0.1 0 3
execute at @s run particle minecraft:dust{color:[1f,0.7f,18000000f],scale:1.4f} ~ ~ ~


execute at @s run tp @s ^ ^ ^0.25 facing entity @e[tag=same_id,limit=1] eyes




execute if entity @e[tag=same_id,dx=0] as @e[tag=same_id] run function svm_ep:power/flora/blooming_flash/collect
execute if entity @e[tag=same_id,dx=0] run scoreboard players set @s svm_ep.lifetime 200
tag @s remove executor
tag @e remove same_id
kill @s[scores={svm_ep.lifetime=200..}]