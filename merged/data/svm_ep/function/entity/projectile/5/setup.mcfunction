#HOLLOW PURPLE
scoreboard players set @s svm_ep.projectile 250
scoreboard players set @s svm_ep.projectile_id 5

item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:projectile/purple"]
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
data modify entity @s Rotation set from entity @n[tag=executor] Rotation
data merge entity @s {billboard:center,CustomName:'[{"text":"purple"}]',teleport_duration:1,transformation:{scale:[0.0f,0.0f,0.0f]},interpolation_duration:1,start_interpolation:-1,brightness:{block:15,sky:15}}




return 0
tag @s add executor2
execute summon minecraft:item_display run function svm_ep:entity/projectile/5/setup_display
tag @s remove executor2
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.75 0.75
