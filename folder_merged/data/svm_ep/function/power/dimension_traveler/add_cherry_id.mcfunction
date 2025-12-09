scoreboard players add %total_ids svm_ep.dimension_cherry_island_id 1
scoreboard players operation @s svm_ep.dimension_cherry_island_id = %total_ids svm_ep.dimension_cherry_island_id

function svm_ep:power/dimension_traveler/calculate_cherry_id

execute store result storage svm_ep:coordinates input.x int 1 run scoreboard players get %calculate svm_ep.dimension_cherry_island_id
function svm_ep:power/dimension_traveler/place_cherry_island with storage svm_ep:coordinates input