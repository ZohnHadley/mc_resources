scoreboard players add @s svm_ep.lifetime 1
tag @s add executor
execute as @e[distance=..100,type=!#svm_ep:technical,scores={svm_ep.p.healing_marked_by=1..}] if score @s svm_ep.entity_id_slow = @n[tag=executor] svm_ep.entity_id run tag @s add same_id
execute unless entity @e[tag=same_id] run kill @s


execute at @s run tp @s ~ ~ ~ facing entity @n[tag=same_id] eyes

execute store result score .c svm_ep.tp_to run random value -5..5
execute store result score .v svm_ep.tp_to run random value -5..5
function svm_ep:system/test/macro/rot

execute at @s[tag=!hit] run function svm_ep:power/healing/helping_hand/move
execute if block ~ ~ ~ #svm_ep:no_physical_hitbox at @s[tag=!hit] run function svm_ep:power/healing/helping_hand/move
execute if block ~ ~ ~ #svm_ep:no_physical_hitbox at @s[tag=!hit] run function svm_ep:power/healing/helping_hand/move
execute at @s[tag=hit] run function svm_ep:power/healing/helping_hand/hit


tag @s remove executor
tag @e remove same_id
kill @s[scores={svm_ep.lifetime=200..}]