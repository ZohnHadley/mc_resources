scoreboard players add @s svm_ep.lifetime 1

execute if predicate svm_ep:chance/15_percent if block ~ ~ ~ #svm_ep:no_physical_hitbox run function svm_ep:power/flora/tree_place/place_wood
execute if block ~ ~ ~ #svm_ep:no_physical_hitbox run setblock ~ ~ ~ mangrove_roots


tp @s ^ ^ ^0.5 ~ ~7
execute store result score .c svm_ep.tp_to run random value -5..5
execute store result score .v svm_ep.tp_to run random value -2..2
execute if predicate svm_ep:chance/10_percent run function svm_ep:power/flora/tree_big/tree/oak/crown_place_leaves
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox unless block ~ ~ ~ #svm_ep:flora_log_destroy_destroys unless block ~ ~ ~ #minecraft:leaves run kill @s
kill @s[scores={svm_ep.lifetime=10..}]
function svm_ep:system/test/macro/rot
particle minecraft:crit ~ ~ ~ 0.5 0.5 0.5 0.8 5
