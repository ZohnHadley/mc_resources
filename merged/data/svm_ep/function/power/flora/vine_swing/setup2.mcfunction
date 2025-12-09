tag @s add svm_ep.check_to_recall
tag @s add svm_ep.vine_swing_motion
data modify entity @s Rotation set from entity @n[tag=executor] Rotation
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id


data merge entity @s {billboard:center,teleport_duration:1}
playsound minecraft:item.lead.break master @a ~ ~ ~ 1 0.9
item replace entity @s contents with minecraft:vine
