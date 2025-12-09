tag @s add svm_ep.kelp_slap
scoreboard players set @s svm_ep.projectile 1
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
data modify entity @s Rotation set from entity @n[tag=executor] Rotation
item replace entity @s container.0 with minecraft:kelp
data merge entity @s {teleport_duration:1}