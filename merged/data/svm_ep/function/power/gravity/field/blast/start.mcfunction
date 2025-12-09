scoreboard players set @s svm_ep.using_move 760

execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 0.6 1.75
execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 0.3 2

playsound minecraft:block.beacon.activate master @a[distance=..50] ~ ~ ~ 0 0.7
execute as @a[distance=..50] at @s run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1 1.2

execute positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:["svm_ep.gravity_field_blast","svm_ep.gravity_can_manipulate"]}
scoreboard players set @n[tag=svm_ep.gravity_field_blast] svm_ep.projectile 1
scoreboard players set @n[tag=svm_ep.gravity_field_blast] svm_ep.p.gravity_field_reverted 0
execute as @s[scores={svm_ep.p.gravity_revert=1..}] run scoreboard players set @n[tag=svm_ep.gravity_field_blast] svm_ep.p.gravity_field_reverted 1
scoreboard players operation @n[tag=svm_ep.gravity_field_blast] svm_ep.entity_id = @s svm_ep.entity_id
scoreboard players operation @n[tag=svm_ep.gravity_field_blast] svm_ep.p.gravity_field_color = @s svm_ep.p.gravity_field_color
scoreboard players operation @n[tag=svm_ep.gravity_field_blast] svm_ep.p.gravity_field_color = @s[scores={svm_ep.p.gravity_revert=0..,svm_ep.p.gravity_field_color_reverted=0..}] svm_ep.p.gravity_field_color_reverted


function svm_ep:system/macro/command {command:"emotes play gravity_field_blast_start"}

execute at @n[tag=svm_ep.gravity_field_blast] summon item_display run function svm_ep:power/gravity/field/display/setup2

scoreboard players reset @s svm_ep.p.gravity_revert