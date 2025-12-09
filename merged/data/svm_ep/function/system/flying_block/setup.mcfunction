tag @s add svm_ep.item_display
scoreboard players remove @s svm_ep.lifetime 100
loot replace entity @s container.0 mine ~ ~-1 ~ minecraft:diamond_pickaxe[enchantments={silk_touch:1}]
scoreboard players set @s svm_ep.item_display_type 1
data modify entity @s Rotation set from entity @e[tag=executor,limit=1]
data merge entity @s {teleport_duration:2}

