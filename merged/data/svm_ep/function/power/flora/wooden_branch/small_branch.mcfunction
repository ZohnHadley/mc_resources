function svm_ep:system/set_random_rotation
scoreboard players operation @s svm_ep.p.flora_climate = @n[tag=executor] svm_ep.p.flora_climate

execute at @s positioned ^ ^ ^0.4 as @n[tag=executor] run function svm_ep:power/flora/tree_place/place_wood
execute at @s positioned ^ ^ ^1.4 as @n[tag=executor] run function svm_ep:power/flora/tree_place/place_wood
execute at @s positioned ^ ^ ^2.0 as @n[tag=executor] run function svm_ep:power/flora/tree_place/place_wood
execute at @s positioned ^ ^ ^2.6 as @n[tag=executor] run function svm_ep:power/flora/tree_place/place_wood
execute at @s positioned ^ ^ ^4.0 as @n[tag=executor] if predicate svm_ep:chance/33_percent run function svm_ep:power/flora/tree_big/tree/oak/crown

kill @s