scoreboard players set @s svm_ep.projectile 50
scoreboard players set @s svm_ep.projectile_id 4

item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:projectile/red"]
tag @s add svm_ep.reversal_red
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
data modify entity @s Rotation set from entity @n[tag=executor] Rotation
data merge entity @s {billboard:center,CustomName:'[{"text":"red"}]',teleport_duration:1,transformation:{scale:[1f,1f,1f]},interpolation_duration:1,start_interpolation:-1,brightness:{block:15,sky:15}}

