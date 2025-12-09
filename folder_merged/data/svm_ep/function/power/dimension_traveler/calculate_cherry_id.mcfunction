#function svm_ep:power/dimension_traveler/calculate_cherry_id
scoreboard players operation %calculate svm_ep.dimension_cherry_island_id = @s svm_ep.dimension_cherry_island_id
scoreboard players operation %calculate svm_ep.dimension_cherry_island_id -= %1 svm_ep.numbers
scoreboard players operation %calculate svm_ep.dimension_cherry_island_id *= %cherry_island_offset svm_ep.world_settings