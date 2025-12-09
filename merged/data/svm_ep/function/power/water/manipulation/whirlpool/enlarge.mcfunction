scoreboard players remove @s svm_ep.lifetime 4
scoreboard players set @s[scores={svm_ep.lifetime=..0}] svm_ep.lifetime 0
scoreboard players add @s svm_ep.p.water_droplet_size 2
scoreboard players set @s[scores={svm_ep.p.water_droplet_size=200..}] svm_ep.p.water_droplet_size 200
particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.01 2
playsound minecraft:item.bucket.empty master @a[distance=..25] ~ ~ ~ 0.35 1.5 0.1
function svm_ep:power/water/manipulation/whirlpool/update_size