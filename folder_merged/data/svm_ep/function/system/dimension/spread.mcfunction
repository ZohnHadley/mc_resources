execute if score %SPREAD svm_ep.numbers matches 0 run return fail
spreadplayers ~ ~ 1 5 false @s
execute if dimension minecraft:the_nether run spreadplayers ~ ~ 1 5 under 120 false @s
execute if dimension minecraft:the_end run function svm_ep:system/dimension/spawn_end
execute if dimension svm_ep:paradise run spreadplayers ~ ~ 1 5 false @s
execute if dimension svm_ep:cherry_island run function svm_ep:power/dimension_traveler/calculate_cherry_id
execute if dimension svm_ep:cherry_island store result storage svm_ep:coordinates input.x int 1 run scoreboard players get %calculate svm_ep.dimension_cherry_island_id
execute if dimension svm_ep:cherry_island run function svm_ep:power/dimension_traveler/tp_to_cherry_island with storage svm_ep:coordinates input
execute if dimension svm_ep:pocket run spreadplayers ~ ~ 1 5 false @s



