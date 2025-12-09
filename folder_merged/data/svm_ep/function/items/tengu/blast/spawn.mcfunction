tag @s add svm_ep.air_blast
scoreboard players set @s svm_ep.projectile 15
#item replace entity @s container.0 from entity @e[tag=executor,limit=1] weapon.mainhand
data merge entity @s {item_display:"head",CustomName:{"text":"air blast"},teleport_duration:1}
data modify entity @s Rotation set from entity @e[tag=executor,limit=1] Rotation
scoreboard players operation @s svm_ep.entity_id = @a[tag=executor] svm_ep.entity_id