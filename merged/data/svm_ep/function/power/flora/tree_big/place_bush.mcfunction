tag @s add svm_ep.no_tick
tag @s add svm_ep.flora_tree_big
tag @s add svm_ep.flora.tree
execute if score %INSTANT_LEAVES svm_ep.world_settings matches 1 run tag @s add instant
#scoreboard players operation @s svm_ep.p.flora_tree_size += @n[tag=executor] svm_ep.p.flora_tree_size
scoreboard players set @s svm_ep.p.flora_tree_size 2
function svm_ep:system/start_random_rotation_x
rotate @s ~ -90

function svm_ep:power/flora/selection/get_from_biome
function svm_ep:power/flora/selection/get_from_executor


