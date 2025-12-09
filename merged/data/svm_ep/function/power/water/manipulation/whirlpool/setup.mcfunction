tag @s add svm_ep.water_whirlpool
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
scoreboard players set @s svm_ep.projectile 80
scoreboard players set @s svm_ep.p.water_droplet_size 20

particle minecraft:gust
playsound minecraft:entity.breeze.charge master @a[distance=..35] ~ ~ ~ 1 0.49

particle minecraft:splash ~ ~ ~ 0.5 0.5 0.5 0 15
#particle minecraft:dust{color:[0.92f,0.9f,0.6f],scale:1.75f} ~ ~ ~ 0.3 0.3 0.3 0 5
item replace entity @s contents with minecraft:light_blue_stained_glass[item_model="svm_ep:particle/whirlpool"]
data merge entity @s {teleport_duration:2,transformation:{scale:[0.5f,1f,0.5f]},interpolation_duration:1,start_interpolation:-1}

