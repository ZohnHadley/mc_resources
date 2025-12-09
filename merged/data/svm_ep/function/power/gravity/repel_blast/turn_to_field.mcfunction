scoreboard players set @s svm_ep.projectile 100
tag @e[tag=svm_ep.gravity_field,distance=..5] add svm_ep.gravity_repel_field
particle minecraft:end_rod ~ ~ ~ 0 0 0 4.55 600 force @a
playsound minecraft:entity.allay.ambient_with_item master @a[distance=..40] ~ ~ ~ 1.5 0
playsound entity.ender_dragon.growl master @a[distance=..40] ~ ~ ~ 1 0
playsound entity.ender_dragon.growl master @a[distance=..40] ~ ~ ~ 1 0
playsound minecraft:entity.wither.death master @a[distance=..40] ~ ~ ~ 0.75 2
kill @s