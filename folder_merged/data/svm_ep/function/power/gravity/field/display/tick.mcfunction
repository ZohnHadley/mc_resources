execute store result entity @s[tag=!svm_ep.gravity_field_display_2] transformation.scale[] double 0.035 run scoreboard players get @n[tag=svm_ep.gravity_field] svm_ep.p.gravity_field_strength
#execute as @s[tag=svm_ep.gravity_field_display_2] run scoreboard players operation @s svm_ep.p.gravity_field_strength = @n[tag=svm_ep.gravity_field] svm_ep.p.gravity_field_strength
#execute as @s[tag=svm_ep.gravity_field_display_2] run scoreboard players remove @s svm_ep.p.gravity_field_strength 10
#execute store result entity @s[tag=svm_ep.gravity_field_display_2] transformation.scale[] double 0.025 run scoreboard players get @s svm_ep.p.gravity_field_strength
data merge entity @s {interpolation_duration:1,start_interpolation:-1}
#execute if predicate svm_ep:chance/50_percent run function svm_ep:system/set_random_rotation_non_player


function svm_ep:system/set_random_rotation_non_player

$execute if predicate svm_ep:chance/67_percent at @s positioned ^ ^ ^$(range_distance_3) positioned ^ ^ ^2.5 summon minecraft:item_display run function svm_ep:power/gravity/field/display/stripe/setup

execute unless score gravityFieldPullBlocks svm_ep.gamerule matches 1.. run return 0
$scoreboard players set @s svm_ep.raycast_length $(count_distance_3)
scoreboard players set @s[scores={svm_ep.raycast_length=50..}] svm_ep.raycast_length 50
execute at @s run function svm_ep:power/gravity/field/display/raycast
