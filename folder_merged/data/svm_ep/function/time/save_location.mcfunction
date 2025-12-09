execute as @s[predicate=!svm_ep:has_entity_id_slow] run function svm_ep:system/id/give_id_slow
tag @s add executor
execute store result storage svm_ep:time_saves input.id int 1.0 run scoreboard players get @s svm_ep.entity_id_slow
function svm_ep:time/setup_location with storage svm_ep:time_saves input
tag @s remove executor
tag @s add location_saved
