execute unless entity @s[scores={svm_ep.p.flora_climate=1..}] run function svm_ep:power/flora/tree_big/branch/oak
execute as @s[scores={svm_ep.p.flora_climate=1}] run function svm_ep:power/flora/tree_big/branch/spruce
execute as @s[scores={svm_ep.p.flora_climate=2}] run function svm_ep:power/flora/tree_big/branch/birch
execute as @s[scores={svm_ep.p.flora_climate=3}] run function svm_ep:power/flora/tree_big/branch/jungle
execute as @s[scores={svm_ep.p.flora_climate=4}] run function svm_ep:power/flora/tree_big/branch/acacia
execute as @s[scores={svm_ep.p.flora_climate=5}] run function svm_ep:power/flora/tree_big/branch/dark_oak
execute as @s[scores={svm_ep.p.flora_climate=6}] run function svm_ep:power/flora/tree_big/branch/mangrove
execute as @s[scores={svm_ep.p.flora_climate=7}] run function svm_ep:power/flora/tree_big/branch/cherry
execute as @s[scores={svm_ep.p.flora_climate=8}] run function svm_ep:power/flora/tree_big/branch/crimson
execute as @s[scores={svm_ep.p.flora_climate=9}] run function svm_ep:power/flora/tree_big/branch/warped
execute as @s[scores={svm_ep.p.flora_climate=10}] run function svm_ep:power/flora/tree_big/branch/azalea
execute as @s[scores={svm_ep.p.flora_climate=11}] run function svm_ep:power/flora/tree_big/branch/dark_oak


playsound minecraft:block.wood.place block @a[distance=..30] ~ ~ ~ 0.75 1.1 0.1
#particle minecraft:dust 0.45 0.9 0.21 2 ~ ~0.5 ~ 0.5 0.5 0.5 0 5


execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox unless block ~ ~ ~ #minecraft:leaves unless block ~ ~ ~ #svm_ep:logs_and_wood run scoreboard players set @s svm_ep.p.flora_tree_size 0