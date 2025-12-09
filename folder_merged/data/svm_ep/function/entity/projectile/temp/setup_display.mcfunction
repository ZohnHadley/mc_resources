scoreboard players set @s svm_ep.projectile 100000000
tag @s add svm_ep.projectile_display

scoreboard players set @s svm_ep.projectile_id 1

data merge entity @s {teleport_duration:3,transformation:{scale:[0.75f,0.75f,0.75f]},interpolation_duration:1,start_interpolation:-1}
item replace entity @s container.0 with minecraft:light_blue_stained_glass
ride @s mount @n[tag=executor2]