tag @s add svm_ep.water_droplet
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
scoreboard players set @s svm_ep.projectile 1

data modify entity @s Rotation set from entity @n[tag=executor] Rotation

particle minecraft:splash ~ ~ ~ 0.5 0.5 0.5 0 15
playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron master @a[distance=..25] ~ ~ ~ 2 1 1
#particle minecraft:dust{color:[0.92f,0.9f,0.6f],scale:1.75f} ~ ~ ~ 0.3 0.3 0.3 0 5
item replace entity @s contents with minecraft:light_blue_stained_glass
data merge entity @s {teleport_duration:2,transformation:{scale:[0.2f,0.2f,0.2f]},interpolation_duration:1,start_interpolation:-1}

execute unless block ~ ~ ~ water run return 0
tag @s add svm_ep.active
tag @s add svm_ep.water_droplet_from_water
data merge entity @s {teleport_duration:2,transformation:{scale:[0.16f,0.16f,0.16f]},interpolation_duration:1,start_interpolation:-1}
item replace entity @s contents with minecraft:white_stained_glass
playsound minecraft:item.shield.block master @a[distance=..25] ~ ~ ~ 0.5 1.2 0.1
