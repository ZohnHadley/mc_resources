
scoreboard players operation %ACCELERATION svm_ep.numbers = %acceleration_speed svm_ep.world_settings
scoreboard players operation %ACCELERATION svm_ep.numbers -= %100 svm_ep.numbers
scoreboard players operation %ACCELERATION svm_ep.numbers *= @s svm_ep.p.time_accelerated_level
execute store result storage svm_ep:numbers input.value double 0.01 run scoreboard players get %ACCELERATION svm_ep.numbers
function svm_ep:power/time/accelerate/update_attributes with storage svm_ep:numbers input