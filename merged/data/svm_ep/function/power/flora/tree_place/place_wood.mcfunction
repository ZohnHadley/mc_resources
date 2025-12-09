execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox unless block ~ ~ ~ #minecraft:leaves run return 0
setblock ~ ~ ~ minecraft:oak_wood
#execute unless block ~ ~ ~ #svm_ep:indestructable run setblock ~ ~ ~ minecraft:oak_wood

execute as @s[tag=svm_ep.mid_air] align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=svm_ep.flora_tree_block,distance=..0.2] summon item_display run function svm_ep:power/flora/tree_place/temporary

execute as @s[scores={svm_ep.p.flora_climate=1}] run setblock ~ ~ ~ minecraft:spruce_wood
execute as @s[scores={svm_ep.p.flora_climate=2}] run setblock ~ ~ ~ minecraft:birch_wood
execute as @s[scores={svm_ep.p.flora_climate=3}] run setblock ~ ~ ~ minecraft:jungle_wood
execute as @s[scores={svm_ep.p.flora_climate=4}] run setblock ~ ~ ~ minecraft:acacia_wood
execute as @s[scores={svm_ep.p.flora_climate=5}] run setblock ~ ~ ~ minecraft:dark_oak_wood
execute as @s[scores={svm_ep.p.flora_climate=6}] run setblock ~ ~ ~ minecraft:mangrove_wood
execute as @s[scores={svm_ep.p.flora_climate=7}] run setblock ~ ~ ~ minecraft:cherry_wood
execute as @s[scores={svm_ep.p.flora_climate=8}] run setblock ~ ~ ~ minecraft:crimson_hyphae
execute as @s[scores={svm_ep.p.flora_climate=9}] run setblock ~ ~ ~ minecraft:warped_hyphae
execute as @s[scores={svm_ep.p.flora_climate=11}] if predicate svm_ep:chance/1_percent run setblock ~ ~ ~ minecraft:creaking_heart
execute as @s[scores={svm_ep.p.flora_climate=11}] run setblock ~ ~ ~ minecraft:pale_oak_wood


execute positioned ~ ~-1 ~ unless block ~ ~-1 ~ #svm_ep:no_physical_hitbox unless block ~ ~-1 ~ #minecraft:leaves unless block ~ ~1 ~ #svm_ep:no_physical_hitbox unless block ~ -1 ~ #minecraft:leaves run function svm_ep:power/flora/tree_place/replace_wood_to_log

playsound minecraft:block.wood.place block @a[distance=..8] ~ ~0.5 ~ 2 0.8
execute as @e[type=!#svm_ep:technical,distance=..1.5] at @s align xyz unless block ~ ~ ~ #svm_ep:no_physical_hitbox if block ~ ~1.25 ~ #svm_ep:no_physical_hitbox run tp @s ~ ~1.25 ~