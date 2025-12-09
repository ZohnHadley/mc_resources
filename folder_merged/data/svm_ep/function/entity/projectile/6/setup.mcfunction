scoreboard players set @s svm_ep.projectile 50
scoreboard players set @s svm_ep.projectile_id 6

item replace entity @s contents with minecraft:cobblestone[minecraft:item_model="svm_ep:particle/infinite_void_zoom"]
data merge entity @s {CustomName:'[{"text":"infinite void zoom particles"}]',teleport_duration:1,interpolation_duration:1,start_interpolation:-1,brightness:{block:15,sky:15}}
execute store result entity @s transformation.scale[] double 0.01 run random value 500..1500
execute store result entity @s transformation.scale[2] double 0.25 run data get entity @s transformation.scale[2]
execute store result entity @s transformation.translation[0] double 0.01 run random value -300..300
execute store result entity @s transformation.translation[1] double 0.01 run random value -200..200
execute store result entity @s transformation.translation[2] double 0.01 run random value -300..300
