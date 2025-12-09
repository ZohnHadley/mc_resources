function svm_ep:power/flora/tree_place/place_wood
execute positioned ^0.05 ^ ^-0.1 if block ~ ~ ~ #svm_core:no_hitbox run function svm_ep:power/flora/tree_place/place_wood
execute positioned ^-0.05 ^ ^-0.1 if block ~ ~ ~ #svm_core:no_hitbox run function svm_ep:power/flora/tree_place/place_wood
execute positioned ^ ^0.05 ^-0.1 if block ~ ~ ~ #svm_core:no_hitbox run function svm_ep:power/flora/tree_place/place_wood
execute positioned ^ ^-0.05 ^-0.1 if block ~ ~ ~ #svm_core:no_hitbox run function svm_ep:power/flora/tree_place/place_wood


execute unless entity @s[scores={svm_ep.p.flora_climate=1..}] run function svm_ep:power/flora/tree_big/tree/oak/tree
execute as @s[scores={svm_ep.p.flora_climate=1}] run function svm_ep:power/flora/tree_big/tree/spruce/tree
execute as @s[scores={svm_ep.p.flora_climate=2}] run function svm_ep:power/flora/tree_big/tree/birch/tree
execute as @s[scores={svm_ep.p.flora_climate=3}] run function svm_ep:power/flora/tree_big/tree/jungle/tree
execute as @s[scores={svm_ep.p.flora_climate=4}] run function svm_ep:power/flora/tree_big/tree/acacia/tree
execute as @s[scores={svm_ep.p.flora_climate=5}] run function svm_ep:power/flora/tree_big/tree/dark_oak/tree
execute as @s[scores={svm_ep.p.flora_climate=6}] run function svm_ep:power/flora/tree_big/tree/mangrove/tree
execute as @s[scores={svm_ep.p.flora_climate=7}] run function svm_ep:power/flora/tree_big/tree/cherry/tree
execute as @s[scores={svm_ep.p.flora_climate=8}] run function svm_ep:power/flora/tree_big/tree/crimson/tree
execute as @s[scores={svm_ep.p.flora_climate=9}] run function svm_ep:power/flora/tree_big/tree/warped/tree
execute as @s[scores={svm_ep.p.flora_climate=10}] run function svm_ep:power/flora/tree_big/tree/azalea/tree
execute as @s[scores={svm_ep.p.flora_climate=11}] run function svm_ep:power/flora/tree_big/tree/dark_oak/tree


playsound minecraft:block.wood.place block @a[distance=..30] ~ ~ ~ 0.75 1.1 0.1
#particle minecraft:dust 0.45 0.9 0.21 2 ~ ~0.5 ~ 0.5 0.5 0.5 0 5

tp @s ^ ^ ^1


execute at @s unless block ~ ~1 ~ #svm_ep:no_physical_hitbox unless block ~ ~1 ~ #minecraft:leaves unless block ~ ~1 ~ #svm_ep:logs_and_wood run scoreboard players set @s svm_ep.p.flora_tree_size 0
