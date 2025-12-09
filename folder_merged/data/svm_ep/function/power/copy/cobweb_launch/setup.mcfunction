tag @s add svm_ep.cobweb_launch
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
scoreboard players set @s svm_ep.projectile 10

data modify entity @s Rotation set from entity @n[tag=executor] Rotation






execute summon item_display run function svm_ep:power/copy/cobweb_launch/setup2
ride @s mount @n[tag=svm_ep.cobweb_launch_motion]


data modify entity @s transformation.scale[1] set value 0.5
data merge entity @s {teleport_duration:1,transformation:{right_rotation:[0f,1f,0f,1f]}}
playsound minecraft:item.lead.break master @a ~ ~ ~ 1 0.9
item replace entity @s contents with cobweb
