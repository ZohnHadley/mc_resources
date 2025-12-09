playsound minecraft:entity.ender_eye.death master @a[distance=..60] ~ ~ ~ 1 0.7
particle minecraft:flash{color:0xffffffff} ~ ~1 ~
particle minecraft:end_rod ~ ~1 ~ 0 0 0 4 100

scoreboard players operation @s svm_ep.previous_dimension = @s svm_ep.dimension_pre.dimension_hop
execute at @s run function svm_ep:system/dimension/back_to_previous

playsound minecraft:entity.ender_eye.death master @a[distance=..60] ~ ~ ~ 1 0
particle minecraft:flash{color:0xffffffff} ~ ~1 ~
particle minecraft:end_rod ~ ~1 ~ 0 0 0 4 100
effect give @s minecraft:blindness 2 0 true