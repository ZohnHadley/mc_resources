execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run return run kill @s[tag=svm_ep.flora_oak_leaves]
setblock ~ ~ ~ oak_leaves[distance=1]

execute as @s[tag=svm_ep.mid_air] align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=svm_ep.flora_tree_block,distance=..0.2] summon item_display run function svm_ep:power/flora/tree_place/temporary
execute as @s[scores={svm_ep.p.flora_climate=1}] run setblock ~ ~ ~ spruce_leaves[distance=1]
execute as @s[scores={svm_ep.p.flora_climate=2}] run setblock ~ ~ ~ birch_leaves[distance=1]
execute as @s[scores={svm_ep.p.flora_climate=3}] run setblock ~ ~ ~ jungle_leaves[distance=1]
execute as @s[scores={svm_ep.p.flora_climate=3}] if predicate svm_ep:chance/33_percent run place feature svm_ep:flora/vines
execute as @s[scores={svm_ep.p.flora_climate=4}] run setblock ~ ~ ~ acacia_leaves[distance=1]
execute as @s[scores={svm_ep.p.flora_climate=5}] run setblock ~ ~ ~ dark_oak_leaves[distance=1]
execute as @s[scores={svm_ep.p.flora_climate=6}] run setblock ~ ~ ~ mangrove_leaves[distance=1]
execute as @s[scores={svm_ep.p.flora_climate=6}] if predicate svm_ep:chance/25_percent run place feature svm_ep:flora/vines

execute as @s[scores={svm_ep.p.flora_climate=7}] run setblock ~ ~ ~ cherry_leaves[distance=1]
execute as @s[scores={svm_ep.p.flora_climate=8}] run setblock ~ ~ ~ nether_wart_block
execute as @s[scores={svm_ep.p.flora_climate=8}] if predicate svm_ep:chance/10_percent run setblock ~ ~ ~ shroomlight
execute as @s[scores={svm_ep.p.flora_climate=9}] run setblock ~ ~ ~ warped_wart_block
execute as @s[scores={svm_ep.p.flora_climate=9}] if predicate svm_ep:chance/10_percent run setblock ~ ~ ~ shroomlight
execute as @s[scores={svm_ep.p.flora_climate=10}] run setblock ~ ~ ~ azalea_leaves[distance=1]
execute as @s[scores={svm_ep.p.flora_climate=10}] if predicate svm_ep:chance/33_percent run setblock ~ ~ ~ flowering_azalea_leaves[distance=1]
execute as @s[scores={svm_ep.p.flora_climate=11}] run setblock ~ ~ ~ pale_oak_leaves[distance=1]


particle minecraft:happy_villager ~ ~ ~ 0.3 0.3 0.3 0.5 5
playsound minecraft:block.azalea_leaves.place block @a[distance=..20] ~ ~0.5 ~ 0.6 0.8
kill @s[tag=!instant]