schedule function svm_ep:0_save_locations 30s
execute if entity @e[tag=tester] run say saved locations
scoreboard players add %world_minute svm_ep.time 1
execute if score %world_minute svm_ep.time >= %max_time svm_ep.time run scoreboard players set %world_minute svm_ep.time 1

execute store result storage svm_ep:time_saves input.time int 1.0 run scoreboard players get %world_minute svm_ep.time
function svm_ep:time/delete_old_data with storage svm_ep:time_saves input

execute as @a at @s as @e[type=!#svm_ep:technical,tag=!location_saved,distance=..75] run function svm_ep:time/save_location
tag @e remove location_saved

