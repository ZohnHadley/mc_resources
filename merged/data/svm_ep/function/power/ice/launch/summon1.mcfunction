tag @s add svm_ep.launched_ice
tag @s add svm_ep.launched_ice_hitbox
scoreboard players operation @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id
scoreboard players set @s svm_ep.projectile 4
data merge entity @s {teleport_duration:3}
execute align xyz run tp @s ~0.5 ~0.5 ~0.5
item replace entity @s container.0 with ice
execute if block ~ ~ ~ minecraft:packed_ice run item replace entity @s container.0 with packed_ice
execute if block ~ ~ ~ minecraft:blue_ice run item replace entity @s container.0 with blue_ice
setblock ~ ~ ~ air