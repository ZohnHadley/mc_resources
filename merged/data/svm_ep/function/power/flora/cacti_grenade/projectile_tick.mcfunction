return run function svm_ep:power/flora/cacti_grenade/w_motion/projectile_tick

tag @s add executor
scoreboard players add @s svm_ep.lifetime 1

execute as @e[tag=svm_ep.flora_user,distance=..60] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute as @e[tag=svm_ep.cacti_grenade_display] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute as @n[tag=svm_ep.cacti_grenade_display,tag=same_id] if predicate svm_ep:chance/33_percent at @s run function svm_ep:system/set_random_rotation_non_player






execute at @s[tag=!explode] run function svm_ep:power/flora/cacti_grenade/move
execute at @s[tag=!explode] run function svm_ep:power/flora/cacti_grenade/move
execute at @s[tag=!explode] run function svm_ep:power/flora/cacti_grenade/move
execute at @s[tag=!explode] run function svm_ep:power/flora/cacti_grenade/move


tag @s[scores={svm_ep.lifetime=200..}] add explode
execute as @s[tag=explode] at @s run function svm_ep:power/flora/cacti_grenade/explode


tag @s remove executor
tag @e remove same_id
