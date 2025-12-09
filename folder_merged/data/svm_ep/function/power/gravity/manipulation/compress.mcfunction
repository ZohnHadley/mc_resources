tag @s remove svm_ep.gravity_can_manipulate
playsound minecraft:block.beacon.activate master @a[distance=..75] ~ ~ ~ 1 2 0.2
particle minecraft:end_rod ~ ~ ~ 0 0 0 2 150 force @a[distance=..120]
scoreboard players set @s svm_ep.p.gravity_field_compress 600
