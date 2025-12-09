scoreboard players set @s svm_ep.item_display_type 2

item replace entity @s container.0 with minecraft:green_concrete_powder
item replace entity @s container.0 with minecraft:white_stained_glass
data modify entity @s Rotation set from entity @n[tag=executor] Rotation
data modify entity @s teleport_duration set value 1000
data merge entity @s {brightness:{sky:15,block:15}}
scoreboard players set @s svm_ep.lifetime -200
tag @s add svm_ep.first_tick