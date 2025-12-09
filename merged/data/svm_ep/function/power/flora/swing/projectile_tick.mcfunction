tag @s add executor
execute at @s[tag=!svm_ep.flora_vine_anchored] run tp @s ^ ^ ^1.05 ~ ~0.215
execute at @s[tag=!svm_ep.flora_vine_anchored] if biome ~ ~ ~ #minecraft:is_forest run tp @s ^ ^ ^0.75 ~ ~0.215

execute at @s as @e[type=!#svm_ep:technical,distance=..30] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute at @s[tag=!svm_ep.flora_vine_anchored] if entity @e[tag=same_id] if biome ~ ~ ~ #minecraft:is_forest run tp @s ^ ^ ^0.25 ~ ~0.215
execute at @s[tag=!svm_ep.flora_vine_anchored] if entity @e[tag=same_id,tag=svm_ep.flora_user] if biome ~ ~ ~ #minecraft:is_forest run tp @s ^ ^ ^0.65 ~ ~0.215


execute at @s run summon marker ~ ~ ~ {Tags:["new"]}
tp @e[tag=new] @s
execute at @s run tp @s ~ ~ ~ facing entity @n[tag=same_id]

execute at @s run function svm_ep:power/flora/swing/raycast
tag @s remove end_raycast
tp @s @n[tag=new]

kill @e[tag=new]

#execute at @s unless entity @e[tag=same_id,distance=..35] as @e[tag=same_id] run function svm_ep:power/flora/swing/throw

execute at @s if entity @e[dx=0,tag=!same_id,type=!#svm_ep:technical] run tag @s add svm_ep.flora_vine_anchored_mob
execute at @s if entity @e[dx=0,tag=!same_id,type=!#svm_ep:technical] run tag @s add svm_ep.flora_vine_anchored
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add svm_ep.flora_vine_anchored
execute at @s unless entity @e[tag=same_id,distance=..30] run kill @s
execute at @s[tag=svm_ep.flora_vine_anchored,tag=!svm_ep.flora_vine_anchored_mob] as @n[tag=same_id] run function svm_ep:power/flora/swing/throw
execute at @s[tag=svm_ep.flora_vine_anchored,tag=svm_ep.flora_vine_anchored_mob] as @n[dx=0,tag=!same_id,type=!#svm_ep:technical] run function svm_ep:power/flora/swing/throw

tag @a remove same_id
tag @s remove executor
