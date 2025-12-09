tag @s add svm_ep.water_droplet
tag @s add svm_ep.water_pick_up
scoreboard players set @s svm_ep.projectile 4

data modify entity @s Rotation set from entity @n[tag=executor] Rotation
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
particle minecraft:splash ~ ~ ~ 0.5 0.5 0.5 0 5
particle minecraft:bubble_pop ~ ~ ~ 1.5 1.5 1.45 0.15 20
playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron master @a[distance=..35] ~ ~ ~ 2 0 1
playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron master @a[distance=..35] ~ ~ ~ 2 0 1

item replace entity @s contents with minecraft:blue_stained_glass
data merge entity @s {teleport_duration:2,transformation:{scale:[0.9f,0.9f,0.9f]},interpolation_duration:1,start_interpolation:-1}
