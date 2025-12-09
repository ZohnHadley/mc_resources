scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
data modify entity @s Rotation set from entity @n[tag=executor] Rotation

playsound minecraft:entity.breeze.shoot master @a[distance=..25] ~ ~ ~ 0.35 1.5

tag @s add svm_ep.cacti_grenade

scoreboard players set @s svm_ep.projectile 5
item replace entity @s contents with minecraft:cactus
data merge entity @s {teleport_duration:2}
ride @s mount @n[type=snowball]