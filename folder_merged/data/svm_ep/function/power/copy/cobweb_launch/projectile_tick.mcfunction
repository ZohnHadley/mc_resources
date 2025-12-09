scoreboard players set %STATE svm_ep.numbers 0
tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[scores={svm_ep.entity_id=1..},type=!#svm_ep:technical] if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run tag @s add same_id
execute at @n[tag=same_id] run function svm_ep:power/copy/cobweb_launch/distance_start
execute at @n[tag=same_id] run rotate @s facing ~ ~0.7 ~
#DISPLAY IN MIDDLE POINT
execute store result entity @s transformation.translation[2] double 0.005 run data get storage svm_ep:numbers distance
#STRETCH
execute store result entity @s transformation.scale[2] double 0.01 run data get storage svm_ep:numbers distance
data merge entity @s {interpolation_duration:1,start_interpolation:-1}

execute if score %distance svm_ep.numbers >= %copy_cobweb_max_length svm_ep.world_settings run kill @s





execute on vehicle run function svm_ep:power/copy/cobweb_launch/motion_tick
execute as @s if score %STATE svm_ep.numbers matches 0 as @s[tag=!svm_ep.active] as @n[tag=same_id] run function svm_ep:power/copy/cobweb_launch/launch

execute as @s if score %STATE svm_ep.numbers matches 0 as @n[tag=same_id] run function svm_ep:power/copy/cobweb_launch/launch_player
execute as @s if score %STATE svm_ep.numbers matches 0 run scoreboard players add @s svm_ep.lifetime 9


tag @e remove same_id
tag @s remove executor
kill @s[scores={svm_ep.lifetime=200..}]

