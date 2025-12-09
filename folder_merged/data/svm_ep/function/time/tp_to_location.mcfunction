
tag @s add executor
execute store result storage svm_ep:time_saves input.id int 1.0 run scoreboard players get @s svm_ep.entity_id_slow

function svm_ep:time/search_storage with storage svm_ep:time_saves input
tag @s remove executor
