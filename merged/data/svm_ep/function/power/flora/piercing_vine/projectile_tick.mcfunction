tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[tag=svm_ep.flora_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id


data modify entity @s Rotation set from entity @n[tag=same_id] Rotation



execute unless entity @s[scores={svm_ep.p.lightning_electric_string_direction=1..}] store result score @s svm_ep.p.lightning_electric_string_direction run random value 1..4



execute at @s run function svm_ep:power/flora/piercing_vine/tick0
scoreboard players add @s[scores={svm_ep.p.lightning_electric_string_direction=1..4}] svm_ep.p.lightning_electric_string_direction 4

execute at @s run function svm_ep:power/flora/piercing_vine/move

execute at @s run function svm_ep:power/flora/piercing_vine/tick0
scoreboard players remove @s[scores={svm_ep.p.lightning_electric_string_direction=5..8}] svm_ep.p.lightning_electric_string_direction 4

execute at @s run function svm_ep:power/flora/piercing_vine/move

execute at @s run function svm_ep:power/flora/piercing_vine/tick0
scoreboard players reset @s svm_ep.p.lightning_electric_string_direction

execute at @s as @e[tag=hitby,distance=..15] run function svm_ep:power/flora/piercing_vine/hitby

playsound minecraft:block.weeping_vines.break master @a[distance=..35] ~ ~ ~ 1 1.5


tag @s remove had_direction
tag @s remove executor
tag @e[tag=svm_ep.flora_user] remove same_id
kill @s[scores={svm_ep.lifetime=40..}]