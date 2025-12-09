function svm_ep:system/start_random_rotation_x

execute if predicate svm_ep:chance/40_percent run tp @s ~ ~ ~ ~ -12
execute if predicate svm_ep:chance/40_percent run tp @s ~ ~ ~ ~ -12
execute if predicate svm_ep:chance/40_percent run tp @s ~ ~ ~ ~ -12
execute if predicate svm_ep:chance/40_percent run tp @s ~ ~ ~ ~ -12
execute positioned ^ ^ ^0.7 run function svm_ep:power/flora/tree_place/place_wood
execute if predicate svm_ep:chance/30_percent positioned ^ ^ ^1.4 run function svm_ep:power/flora/tree_place/place_wood

kill @s