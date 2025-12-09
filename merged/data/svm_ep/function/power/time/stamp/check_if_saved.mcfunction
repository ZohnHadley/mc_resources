tag @s add executor
execute store result storage svm_ep:time_saves input.id int 1.0 run scoreboard players get @s svm_ep.entity_id

function svm_ep:power/time/stamp/check_if_saved_macro with storage svm_ep:time_saves input
tag @s remove executor
