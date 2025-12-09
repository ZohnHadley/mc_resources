scoreboard players set @s svm_ep.projectile 4
scoreboard players set @s svm_ep.projectile_type 2
tag @s add svm_ep.flora_vine_motion
tag @s add svm_ep.flora_vine_is_hitbox
execute positioned ^ ^ ^100 run rotate @s facing ~ ~ ~
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id

data merge entity @s {teleport_duration:1}
loot replace entity @s contents mine ~ ~ ~ minecraft:diamond_pickaxe[minecraft:enchantments={silk_touch:1}]
execute unless items entity @s contents * run loot replace entity @s contents mine ~ ~ ~ minecraft:shears[minecraft:enchantments={silk_touch:1}]
execute unless items entity @s contents * run item replace entity @s contents with minecraft:vine