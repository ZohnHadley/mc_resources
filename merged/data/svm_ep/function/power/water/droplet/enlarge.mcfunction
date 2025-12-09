scoreboard players set @s svm_ep.lifetime 0
scoreboard players add @s svm_ep.p.water_droplet_size_charge 1
scoreboard players operation @s svm_ep.p.water_droplet_size_charge += %add svm_ep.p.water_droplet_size_charge
scoreboard players reset %add svm_ep.p.water_droplet_size_charge
playsound minecraft:item.bucket.empty master @a[distance=..25] ~ ~ ~ 0.15 1.5 0.1

execute as @s[scores={svm_ep.p.water_droplet_size_charge=..4}] run return 0
scoreboard players add @s svm_ep.p.water_droplet_size 1
scoreboard players reset @s svm_ep.p.water_droplet_size_charge
particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.01 2
playsound minecraft:item.bucket.empty master @a[distance=..25] ~ ~ ~ 0.35 1.5 0.1