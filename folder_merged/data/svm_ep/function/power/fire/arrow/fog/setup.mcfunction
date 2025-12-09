scoreboard players set @s svm_ep.item_display_type 0
scoreboard players set @s svm_ep.lifetime -140

data modify entity @s transformation.scale set value [0f,0f,0f]
data modify entity @s start_interpolation set value -1
data modify entity @s interpolation_duration set value 150
data modify entity @s transformation.scale set value [40f,40f,40f]
execute at @s run function svm_ep:system/set_random_rotation

item replace entity @s container.0 with minecraft:gray_stained_glass
data merge entity @s {brightness:{sky:15,block:15}}
