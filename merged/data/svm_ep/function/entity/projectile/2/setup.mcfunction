scoreboard players set @s svm_ep.projectile 50
scoreboard players set @s svm_ep.projectile_id 2

item replace entity @s container.0 with minecraft:gray_stained_glass
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
data modify entity @s Rotation set from entity @n[tag=executor] Rotation
data merge entity @s {view_range:10,CustomName:'[{"text":"big smoke"}]',teleport_duration:1,transformation:{scale:[0f,0f,0f]},interpolation_duration:1,start_interpolation:-1}
function svm_ep:system/set_random_rotation

