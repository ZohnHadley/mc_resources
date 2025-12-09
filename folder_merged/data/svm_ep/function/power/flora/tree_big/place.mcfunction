tag @s add svm_ep.no_tick
tag @s add svm_ep.flora_tree_big
tag @s add svm_ep.flora.tree
execute if score %INSTANT_LEAVES svm_ep.world_settings matches 1 run tag @s add instant
scoreboard players add @s svm_ep.p.flora_tree_size 5

scoreboard players operation @s svm_ep.p.flora_tree_size += @n[tag=executor] svm_ep.p.flora_tree_size
execute at @s align xyz run tp @s ~0.5 ~ ~0.5
execute at @s run rotate @s facing ~ ~1 ~
execute store result storage svm_ep:math rotation.x int 1.0 run random value -100..100
execute store result storage svm_ep:math rotation.y int 1.0 run random value -100..100
execute store result storage svm_ep:math rotation.z int 1.0 run random value 200..750
function svm_ep:power/flora/tree_big/branch/rotate with storage svm_ep:math rotation


function svm_ep:power/flora/selection/get_from_biome
function svm_ep:power/flora/selection/get_from_executor


