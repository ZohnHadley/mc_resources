data modify entity @s Rotation set from entity @e[tag=same_id,limit=1] Rotation
scoreboard players set @s svm_ep.projectile 4

playsound minecraft:entity.generic.explode master @a[distance=..20] ~ ~ ~ 0.8 1.2
playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 0.65 1.2
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
particle minecraft:item{item:ice} ~ ~ ~ 0 0 0 0.4 20
tag @s add launched