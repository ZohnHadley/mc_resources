#tag @s add executor
scoreboard players reset %DISTANCE svm_ep.numbers
scoreboard players operation @s svm_ep.raycast_length = %water_manipulation_ice_range_default svm_ep.world_settings
scoreboard players operation @s svm_ep.raycast_length += @s svm_ep.p.water_manipulation_ice_range.lvl
execute at @s anchored eyes positioned ^ ^ ^0.5 run function svm_ep:power/water/manipulation/ice/raycast
#tag @s remove executor