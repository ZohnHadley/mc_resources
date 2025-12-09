scoreboard players set @s svm_ep.projectile 50
scoreboard players set @s svm_ep.projectile_id 1

item replace entity @s container.0 with minecraft:cobblestone
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
data modify entity @s Rotation set from entity @n[tag=executor] Rotation

data merge entity @s {CustomName:'[{"text":"shiny rock"}]',teleport_duration:1,transformation:{scale:[0.5f,0.5f,0.5f]},interpolation_duration:1,start_interpolation:-1}

tag @s add executor2
execute summon minecraft:item_display run function svm_ep:entity/projectile/setup_display_template
tag @s remove executor2
