#DISPLAY

function svm_ep:system/set_random_rotation_non_player

execute on vehicle run return 0
#ON HIT
tag @s add executor
execute at @s as @e[tag=svm_ep.flora_user,distance=..60] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
tag @s remove executor
execute at @s run function svm_ep:power/flora/cacti_grenade/explode