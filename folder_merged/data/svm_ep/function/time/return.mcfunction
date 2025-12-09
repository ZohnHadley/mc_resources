scoreboard players operation %time_to_tp svm_ep.time = %time svm_ep.time
$scoreboard players remove %time_to_tp svm_ep.time $(revert_time)
execute if score %time_to_tp svm_ep.time matches ..0 run scoreboard players operation %time_to_tp svm_ep.time += %max_time svm_ep.time
execute store result storage svm_ep:time_saves input.time int 1.0 run scoreboard players get %time_to_tp svm_ep.time
$execute as $(selector) at @s run function svm_ep:time/tp_to_location