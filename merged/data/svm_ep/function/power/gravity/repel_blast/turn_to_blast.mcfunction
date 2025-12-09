tag @s remove svm_ep.gravity_repel_blast
tag @s add svm_ep.gravity_blast
scoreboard players set @s svm_ep.projectile 100
scoreboard players set @s svm_ep.lifetime -110
scoreboard players operation @s svm_ep.p.gravity_pull_charge = @e[tag=svm_ep.gravity_pull,distance=..5,sort=nearest,limit=1] svm_ep.p.gravity_pull_charge
scoreboard players operation @s svm_ep.p.gravity_pull_charge = @e[tag=svm_ep.gravity_pull,distance=..5,sort=nearest,limit=1] svm_ep.p.gravity_pull_charge
kill @e[tag=svm_ep.gravity_pull,distance=..5]

particle minecraft:end_rod ~ ~ ~ 0 0 0 4.55 300 force @a