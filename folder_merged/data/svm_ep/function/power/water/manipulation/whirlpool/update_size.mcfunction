execute store result entity @s transformation.scale[0] float 0.0375 run scoreboard players get @s svm_ep.p.water_droplet_size
execute store result entity @s transformation.scale[2] float 0.0375 run scoreboard players get @s svm_ep.p.water_droplet_size
data merge entity @s {interpolation_duration:2,start_interpolation:-1}
scoreboard players operation @n[tag=executor] svm_ep.mana_drain += @s svm_ep.p.water_droplet_size
scoreboard players operation @s svm_ep.p.water_whirlpool_size = @s svm_ep.p.water_droplet_size
scoreboard players operation @s svm_ep.p.water_whirlpool_size /= %20 svm_ep.numbers