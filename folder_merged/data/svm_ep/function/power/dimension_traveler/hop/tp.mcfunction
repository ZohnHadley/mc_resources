execute at @s run function svm_ep:system/dimension/save
scoreboard players operation @s svm_ep.dimension_pre.dimension_hop = @s svm_ep.previous_dimension

playsound minecraft:entity.ender_eye.death master @a[distance=..60] ~ ~ ~ 1 0.7
particle minecraft:flash{color:0xffffffff} ~ ~1 ~
particle minecraft:end_rod ~ ~1 ~ 0 0 0 4 100
execute in svm_ep:pocket positioned over world_surface run tp @s ~ ~ ~
execute in svm_ep:pocket run spreadplayers ~ ~ 1 5 false @s
playsound minecraft:entity.ender_eye.death master @a[distance=..60] ~ ~ ~ 1 0
particle minecraft:flash{color:0xffffffff} ~ ~1 ~
particle minecraft:end_rod ~ ~1 ~ 0 0 0 4 100
execute at @s run playsound minecraft:block.ender_chest.open master @a[distance=..40] ~ ~ ~ 2 0
execute at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 2 0
effect give @s minecraft:blindness 2 0 true