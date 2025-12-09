scoreboard players operation @s svm_ep.entity_id = @n[tag=target] svm_ep.entity_id_slow
tag @s add svm_ep.health_orb
scoreboard players set @s svm_ep.projectile 10
scoreboard players set @s svm_ep.projectile_type 1

item replace entity @s container.0 with minecraft:redstone
data merge entity @s {CustomName:'[{"text":"health orb"}]',teleport_duration:1,transformation:{scale:[0.5f,0.5f,0.5f]},interpolation_duration:1,start_interpolation:-1,billboard:center}
