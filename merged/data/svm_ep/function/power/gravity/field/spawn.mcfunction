scoreboard players reset @s svm_ep.using_move
scoreboard players reset @s svm_ep.p.void_black_hole_distance
tag @s remove shoot

execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 0.1 1.75
execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 0.3 2
execute at @s[scores={svm_ep.lifetime=1}] run playsound minecraft:entity.warden.sonic_boom master @a[distance=..30] ~ ~ ~ 0.5 1.2 0.25

playsound minecraft:block.beacon.activate master @a[distance=..50] ~ ~ ~ 2 0.7
execute as @a[distance=..50] at @s run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1 1.2

summon item_display ~ ~0.5 ~ {Tags:["svm_ep.gravity_field","svm_ep.gravity_can_manipulate"]}
scoreboard players set @n[tag=svm_ep.gravity_field] svm_ep.projectile 1
scoreboard players set @n[tag=svm_ep.gravity_field] svm_ep.p.gravity_field_reverted 0
execute as @s[scores={svm_ep.p.gravity_revert=1..}] run scoreboard players set @n[tag=svm_ep.gravity_field] svm_ep.p.gravity_field_reverted 1
scoreboard players operation @n[tag=svm_ep.gravity_field] svm_ep.entity_id = @s svm_ep.entity_id
scoreboard players operation @n[tag=svm_ep.gravity_field] svm_ep.p.gravity_field_color = @s svm_ep.p.gravity_field_color
scoreboard players operation @n[tag=svm_ep.gravity_field] svm_ep.p.gravity_field_color = @s[scores={svm_ep.p.gravity_revert=0..,svm_ep.p.gravity_field_color_reverted=0..}] svm_ep.p.gravity_field_color_reverted

execute at @n[tag=svm_ep.gravity_field] summon item_display run function svm_ep:power/gravity/field/display/setup
scoreboard players reset @s svm_ep.p.gravity_revert
scoreboard players set @n[tag=svm_ep.gravity_field] svm_ep.p.gravity_field_strength 10
