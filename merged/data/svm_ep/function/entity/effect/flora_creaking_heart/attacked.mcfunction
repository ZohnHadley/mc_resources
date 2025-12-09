tag @s add executor
execute at @s as @e[distance=..30,tag=svm_ep.block.flora_creaking_heart,sort=nearest] if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run function svm_ep:entity/effect/flora_creaking_heart/point_to_connected_heart
tag @s remove executor
scoreboard players reset %SENT_PARTICLES svm_ep.numbers
