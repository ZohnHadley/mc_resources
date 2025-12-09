scoreboard players operation @s svm_ep.p.water_manipulation_ice_success_rate.score += %DISTANCE svm_ep.numbers
scoreboard players operation @s svm_ep.p.water_manipulation_ice_range.score += %DISTANCE svm_ep.numbers

scoreboard players operation @s svm_ep.p.water_manipulation_ice_range.lvl = @s svm_ep.p.water_manipulation_ice_range.score
scoreboard players operation @s svm_ep.p.water_manipulation_ice_range.lvl /= %water_manipulation_ice_range_level_divisor svm_ep.world_settings
execute if score @s svm_ep.p.water_manipulation_ice_range.lvl > %water_manipulation_ice_range_max svm_ep.world_settings run scoreboard players operation @s svm_ep.p.water_manipulation_ice_range.lvl = %water_manipulation_ice_range_max svm_ep.world_settings