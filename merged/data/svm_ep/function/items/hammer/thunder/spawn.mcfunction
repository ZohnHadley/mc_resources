tag @s add svm_ep.thunder_hammer
scoreboard players set @s svm_ep.projectile 50
scoreboard players operation @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id
data modify entity @s Rotation set from entity @e[tag=executor,limit=1] Rotation
item replace entity @s container.0 from entity @e[tag=executor,limit=1] weapon.mainhand
data merge entity @s {item_display:"head",CustomName:{"text":"thunder hammer"},teleport_duration:1}



execute at @s if entity @a[tag=same_id,dx=0] run function svm_ep:items/hammer/thunder/drop
