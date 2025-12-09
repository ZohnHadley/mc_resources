execute if block ~ ~ ~ #svm_ep:indestructable run return fail

loot replace entity @s container.0 mine ~ ~ ~ minecraft:diamond_pickaxe[enchantments={silk_touch:1}]
execute unless items entity @s contents * run return run kill @s
setblock ~ ~ ~ air

tag @s add svm_ep.item_display
scoreboard players set @s svm_ep.lifetime -100
scoreboard players set @s svm_ep.item_display_type 3
data merge entity @s {teleport_duration:2,}