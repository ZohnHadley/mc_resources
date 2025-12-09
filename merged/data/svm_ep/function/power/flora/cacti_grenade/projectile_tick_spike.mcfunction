tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[tag=svm_ep.flora_user,distance=..60] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute at @s[tag=!hit] run function svm_ep:power/flora/cacti_grenade/move_spike
execute at @s[tag=!hit] run function svm_ep:power/flora/cacti_grenade/move_spike
execute at @s[tag=!hit] run function svm_ep:power/flora/cacti_grenade/move_spike
execute at @s[tag=!hit] run function svm_ep:power/flora/cacti_grenade/move_spike
execute at @s[tag=!hit] run function svm_ep:power/flora/cacti_grenade/move_spike

execute as @s[tag=hit] at @s run function svm_ep:power/flora/cacti_grenade/hit
particle minecraft:crit ~ ~ ~ 0 0 0 0 1
tag @s remove executor
tag @e remove same_id
kill @s[scores={svm_ep.lifetime=4..}]