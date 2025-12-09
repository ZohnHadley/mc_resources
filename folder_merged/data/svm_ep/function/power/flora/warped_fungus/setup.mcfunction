tag @s add svm_ep.warped_fungus
scoreboard players set @s svm_ep.projectile 1
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
execute at @s run function svm_ep:system/start_random_rotation_x
particle minecraft:sonic_boom
playsound minecraft:item.armor.equip_generic master @a[distance=..25] ~ ~ ~ 2 2
tp @s ^-0.5 ^ ^-0.5
execute at @s align y run tp @s ~ ~ ~
data merge entity @s {block_state:{Name:warped_fungus}}
data merge entity @s {teleport_duration:1}