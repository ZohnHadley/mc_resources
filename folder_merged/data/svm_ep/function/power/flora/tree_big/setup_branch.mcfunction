tag @s add svm_ep.no_tick
tag @s add svm_ep.flora_tree_big
tag @s add svm_ep.flora.branch
execute if entity @n[tag=executor5,tag=instant] run tag @s add instant
scoreboard players operation @s svm_ep.lifetime = @n[tag=executor5] svm_ep.lifetime
scoreboard players operation @s svm_ep.p.flora_tree_size = @n[tag=executor5] svm_ep.p.flora_tree_size
scoreboard players operation @s svm_ep.p.flora_climate = @n[tag=executor5] svm_ep.p.flora_climate
data modify entity @s Rotation set from entity @n[tag=svm_ep.flora.tree] Rotation

#function svm_ep:system/start_random_rotation_x
execute store result storage svm_ep:math rotation.x int 1.0 run random value -100..100
execute store result storage svm_ep:math rotation.y int 1.0 run random value -100..100
execute store result storage svm_ep:math rotation.z int 0 run random value -100..100
function svm_ep:power/flora/tree_big/branch/rotate with storage svm_ep:math rotation

execute unless entity @s[scores={svm_ep.p.flora_climate=1..}] at @s run function svm_ep:power/flora/tree_big/tree/oak/branch_setup
execute at @s[scores={svm_ep.p.flora_climate=1}] at @s run function svm_ep:power/flora/tree_big/tree/spruce/branch_setup
execute at @s[scores={svm_ep.p.flora_climate=2}] at @s run function svm_ep:power/flora/tree_big/tree/birch/branch_setup
execute at @s[scores={svm_ep.p.flora_climate=3}] at @s run function svm_ep:power/flora/tree_big/tree/jungle/branch_setup
execute at @s[scores={svm_ep.p.flora_climate=4}] at @s run function svm_ep:power/flora/tree_big/tree/acacia/branch_setup
execute at @s[scores={svm_ep.p.flora_climate=5}] at @s run function svm_ep:power/flora/tree_big/tree/dark_oak/branch_setup
execute at @s[scores={svm_ep.p.flora_climate=6}] at @s run function svm_ep:power/flora/tree_big/tree/mangrove/branch_setup
execute at @s[scores={svm_ep.p.flora_climate=7}] at @s run function svm_ep:power/flora/tree_big/tree/cherry/branch_setup
execute at @s[scores={svm_ep.p.flora_climate=8}] at @s run function svm_ep:power/flora/tree_big/tree/crimson/branch_setup
execute at @s[scores={svm_ep.p.flora_climate=9}] at @s run function svm_ep:power/flora/tree_big/tree/warped/branch_setup
execute at @s[scores={svm_ep.p.flora_climate=10}] at @s run function svm_ep:power/flora/tree_big/tree/azalea/branch_setup