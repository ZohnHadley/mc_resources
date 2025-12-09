tag @s add svm_ep.gravity_punch
scoreboard players operation @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id
scoreboard players operation @s svm_ep.p.gravity_punch = @e[tag=executor,limit=1] svm_ep.p.gravity_punch
scoreboard players set @s svm_ep.projectile 100
particle minecraft:explosion
data modify entity @s Rotation set from entity @p Rotation

playsound minecraft:block.conduit.deactivate master @a[distance=..20] ~ ~ ~ 0.5 2
playsound minecraft:entity.wither.break_block master @a[distance=..20] ~ ~ ~ 0.5 1
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..20] ~ ~ ~ 0.25 2
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..20] ~ ~ ~ 0.25 0
particle end_rod ~ ~ ~ 0 0 0 3 100