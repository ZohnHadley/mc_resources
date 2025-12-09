tag @s add svm_ep.flame_arrow
scoreboard players set @s svm_ep.projectile 100
scoreboard players operation @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id
data merge entity @s {teleport_duration:1,transformation:{scale:[0.75f,0.75f,0.75f]},interpolation_duration:1,start_interpolation:-1}
data modify entity @s Rotation set from entity @e[tag=executor,limit=1] Rotation
item replace entity @s container.0 with minecraft:magma_block
data modify entity @s CustomName set value '[{"text":"flame arrow"}]'
execute at @s run playsound minecraft:entity.player.attack.nodamage master @a[distance=..30] ~ ~ ~ 2 0
playsound minecraft:entity.blaze.shoot master @a[distance=..30] ~ ~ ~ 0.75 0
particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 1.3 500
particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 2.1 500
particle minecraft:smoke ~ ~ ~ 0.15 0.15 0.15 2.7 1500
