tag @s add svm_ep.fire_blow
scoreboard players set @s svm_ep.projectile 4
scoreboard players operation @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id
data merge entity @s {teleport_duration:1,transformation:{scale:[0.75f,0.75f,0.75f]},interpolation_duration:1,start_interpolation:-1}
data modify entity @s Rotation set from entity @e[tag=executor,limit=1] Rotation
item replace entity @s container.0 with minecraft:magma_block
data modify entity @s CustomName set value '[{"text":"fire blow"}]'
execute at @s run playsound minecraft:entity.player.attack.nodamage master @a[distance=..30] ~ ~ ~ 2 0
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.75 2
particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 1.3 5
particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 0.1 5
particle minecraft:smoke ~ ~ ~ 0.15 0.15 0.15 0.7 15
