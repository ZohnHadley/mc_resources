tag @s add svm_ep.dragons_breath
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
scoreboard players set @s svm_ep.projectile 30

data modify entity @s Rotation set from entity @n[tag=executor] Rotation
particle minecraft:end_rod ~ ~ ~ 0.06 0.06 0.06 0.55 430
particle minecraft:dust{color:[0.5f,0.1f,0.5f],scale:1.75f} ~ ~ ~ 2 2 2 0 50

