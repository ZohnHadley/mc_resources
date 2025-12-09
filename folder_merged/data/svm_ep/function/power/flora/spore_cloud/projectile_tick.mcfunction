tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[tag=svm_ep.flora_user,distance=..60] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id

execute as @e[type=!#svm_ep:technical,tag=!same_id,distance=..7] run effect give @s blindness 5 0 true
execute as @e[type=!#svm_ep:technical,tag=!same_id,distance=..7] at @s if block ~ ~-1 ~ minecraft:mycelium run function svm_ep:power/flora/spore_cloud/in_range
execute as @e[type=!#svm_ep:technical,tag=!same_id,distance=..7] at @s if block ~ ~ ~ minecraft:red_mushroom run function svm_ep:power/flora/spore_cloud/in_range
execute as @e[type=!#svm_ep:technical,tag=!same_id,distance=..7] at @s if block ~ ~ ~ minecraft:brown_mushroom run function svm_ep:power/flora/spore_cloud/in_range

fill ~3 ~2 ~2 ~-3 ~-2 ~-2 minecraft:mycelium replace minecraft:grass_block
fill ~2 ~2 ~3 ~-2 ~-2 ~-3 minecraft:mycelium replace minecraft:grass_block
execute if predicate svm_ep:chance/33_percent run place feature minecraft:patch_brown_mushroom
execute if predicate svm_ep:chance/33_percent run place feature minecraft:patch_red_mushroom
particle minecraft:dust{color:[1f,0.85f,0.7f],scale:1.5f} ~ ~ ~ 2 2 2 0 18
particle minecraft:dust{color:[1f,0.85f,0.7f],scale:2.5f} ~ ~2 ~ 1.5 0.6 1.5 0 11
tp @s ^ ^ ^1
playsound minecraft:entity.breeze.land master @a[distance=..25] ~ ~ ~ 1 0.65

kill @s[scores={svm_ep.lifetime=8..}]
tag @s remove executor
tag @n[tag=same_id] remove same_id
