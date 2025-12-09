tag @s add svm_ep.ice_tongue
scoreboard players set @s svm_ep.projectile 10
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id

data modify entity @s Rotation set from entity @n[tag=executor] Rotation

