scoreboard players add @s svm_ep.p.flora_score 1
scoreboard players operation @s svm_ep.p.flora_plant_growth_success_rate.score += %DISTANCE svm_ep.numbers
scoreboard players operation @s svm_ep.p.flora_plant_growth_range.score += %DISTANCE svm_ep.numbers

scoreboard players operation @s svm_ep.p.flora_plant_growth_range.lvl = @s svm_ep.p.flora_plant_growth_range.score
scoreboard players operation @s svm_ep.p.flora_plant_growth_range.lvl /= %flora_plant_growth_range_level_divisor svm_ep.world_settings
execute if score @s svm_ep.p.flora_plant_growth_range.lvl > %flora_plant_growth_range_max svm_ep.world_settings run scoreboard players operation @s svm_ep.p.flora_plant_growth_range.lvl = %flora_plant_growth_range_max svm_ep.world_settings