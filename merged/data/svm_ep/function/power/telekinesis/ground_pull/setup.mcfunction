tag @s add svm_ep.telekinesis_ground_pull
scoreboard players set @s svm_ep.projectile 80
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
scoreboard players operation @s svm_ep.p.telekinesis_ground_pull_size = @n[tag=executor] svm_ep.p.telekinesis_ground_pull_size

tp @s ~ ~ ~ ~ -90
item replace entity @s container.0 with minecraft:stone
data merge entity @s {CustomName:'[{"text":"ground_pull"}]',teleport_duration:1,transformation:{scale:[0.5f,0.5f,0.5f]},interpolation_duration:1,start_interpolation:-1,billboard:center}
