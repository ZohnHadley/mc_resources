tag @s add svm_ep.shulker_bullet
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
scoreboard players set @s svm_ep.projectile 2

data modify entity @s Rotation set from entity @n[tag=executor] Rotation
particle minecraft:end_rod ~ ~ ~ 0.06 0.06 0.06 0.55 15
particle minecraft:dust{color:[0.92f,0.9f,0.6f],scale:1.75f} ~ ~ ~ 0.3 0.3 0.3 0 5
playsound minecraft:entity.shulker.shoot master @a[distance=..33] ~ ~ ~ 0.8 1.05 0.2
execute at @s summon minecraft:shulker_bullet run ride @s mount @n[tag=svm_ep.shulker_bullet]
scoreboard players operation @n[tag=svm_ep.shulker_bullet] svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
