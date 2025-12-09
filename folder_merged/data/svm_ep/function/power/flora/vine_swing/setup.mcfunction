tag @s add svm_ep.vine_swing
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
scoreboard players set @s svm_ep.projectile 8
scoreboard players set @s svm_ep.projectile_type 1

data modify entity @s Rotation set from entity @n[tag=executor] Rotation






execute summon item_display run function svm_ep:power/flora/vine_swing/setup2
ride @s mount @n[tag=svm_ep.vine_swing_motion]


data modify entity @s transformation.scale[1] set value 0.42
data merge entity @s {teleport_duration:1,transformation:{right_rotation:[0f,1f,0f,1f],left_rotation:[1f,0f,0f,1f]}}
playsound minecraft:item.lead.break master @a ~ ~ ~ 1 1.15
item replace entity @s contents with minecraft:vine
