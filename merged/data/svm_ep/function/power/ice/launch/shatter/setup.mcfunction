scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
tag @s add svm_ep.launched_ice_shatter
scoreboard players set @s svm_ep.projectile 4
scoreboard players set @s svm_ep.projectile_type 1
data merge entity @s {CustomName:'shattered ice',teleport_duration:1,transformation:{scale:[0.25f,0.25f,0.25f]},interpolation_duration:1,start_interpolation:-1,billboard:center}
item replace entity @s container.0 with ice
data modify entity @s Rotation set from entity @n[tag=executor] Rotation

execute store result storage svm_ep:coordinates input.c int 1 run random value -6..6
execute store result storage svm_ep:coordinates input.v int 1 run random value -6..6
function svm_ep:system/test/macro/rot0 with storage svm_ep:coordinates input

particle minecraft:item{item:ice} ~ ~ ~ 0.1 0.1 0.1 0.3 10
playsound minecraft:block.glass.break master @a[distance=..25] ~ ~ ~ 1 0.75 0.5

particle minecraft:small_gust ~ ~ ~ 0.2 0.2 0.2 0 1
particle minecraft:snowflake ~ ~ ~ 0.2 0.2 0.2 .2 1