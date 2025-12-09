execute store result entity @s Rotation[0] double 1 run random value 0..360
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
scoreboard players set @s svm_ep.projectile 100
tag @s add svm_ep.cherry_blessing


