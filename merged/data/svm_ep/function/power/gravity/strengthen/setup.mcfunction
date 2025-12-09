tag @s add svm_ep.strengthen_projectile
tag @s add svm_ep.gravity_can_manipulate
scoreboard players set @s svm_ep.projectile 100
scoreboard players set @s svm_ep.projectile_type 1
data merge entity @s {brightness:{sky:15,block:15},teleport_duration:4,transformation:{scale:[1.4f,1.4f,1.4f]},interpolation_duration:1,start_interpolation:-1}
item replace entity @s contents with minecraft:red_stained_glass