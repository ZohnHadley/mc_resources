scoreboard players set @s svm_ep.particle 1
data modify entity @s Rotation set from entity @e[tag=executor,limit=1] Rotation
data merge entity @s {brightness:{sky:15,block:15},teleport_duration:0,transformation:{scale:[2f,2f,0f]},interpolation_duration:1,start_interpolation:-1}
