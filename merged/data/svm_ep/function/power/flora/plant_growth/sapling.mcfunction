execute if block ~ ~-1 ~ #svm_core:no_hitbox run return 0
execute if block ~ ~-1 ~ #svm_ep:indestructable run return 0


clone ~ ~ ~ ~ ~ ~ to svm_ep:technical 0 0 0 replace

setblock ~ ~ ~ air
summon marker ~ ~ ~ {Tags:["svm_ep.temp"]}
execute in svm_ep:technical if block 0 0 0 minecraft:oak_sapling at @e[tag=svm_ep.temp,limit=1] run place feature minecraft:oak
execute in svm_ep:technical if block 0 0 0 minecraft:birch_sapling at @e[tag=svm_ep.temp,limit=1] run place feature minecraft:birch
execute in svm_ep:technical if block 0 0 0 minecraft:spruce_sapling at @e[tag=svm_ep.temp,limit=1] run place feature minecraft:spruce
execute in svm_ep:technical if block 0 0 0 minecraft:jungle_sapling at @e[tag=svm_ep.temp,limit=1] run place feature minecraft:jungle_tree
execute in svm_ep:technical if block 0 0 0 minecraft:acacia_sapling at @e[tag=svm_ep.temp,limit=1] run place feature minecraft:acacia
execute in svm_ep:technical if block 0 0 0 minecraft:dark_oak_sapling at @e[tag=svm_ep.temp,limit=1] run place feature minecraft:dark_oak
execute in svm_ep:technical if block 0 0 0 minecraft:mangrove_propagule at @e[tag=svm_ep.temp,limit=1] run place feature minecraft:mangrove
execute in svm_ep:technical if block 0 0 0 minecraft:cherry_sapling at @e[tag=svm_ep.temp,limit=1] run place feature minecraft:cherry
execute in svm_ep:technical if block 0 0 0 minecraft:pale_oak_sapling at @e[tag=svm_ep.temp,limit=1] run place feature minecraft:pale_oak

execute in svm_ep:technical if block 0 0 0 minecraft:azalea at @e[tag=svm_ep.temp,limit=1] run place feature minecraft:azalea_tree
execute in svm_ep:technical if block 0 0 0 minecraft:flowering_azalea at @e[tag=svm_ep.temp,limit=1] run place feature minecraft:azalea_tree

execute in svm_ep:technical if block 0 0 0 minecraft:crimson_fungus at @e[tag=svm_ep.temp,limit=1] run place feature minecraft:crimson_fungus_planted
execute in svm_ep:technical if block 0 0 0 minecraft:warped_fungus at @e[tag=svm_ep.temp,limit=1] run place feature minecraft:warped_fungus_planted

execute in svm_ep:technical if block 0 0 0 minecraft:brown_mushroom at @e[tag=svm_ep.temp,limit=1] run place feature minecraft:huge_brown_mushroom
execute in svm_ep:technical if block 0 0 0 minecraft:red_mushroom at @e[tag=svm_ep.temp,limit=1] run place feature minecraft:huge_red_mushroom

kill @e[tag=svm_ep.temp]

execute if block ~ ~ ~ air run return run clone from svm_ep:technical 0 0 0 0 0 0 ~ ~ ~

playsound minecraft:block.leaf_litter.break master @a[distance=..35] ~ ~ ~ 2 0.3 0.5
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:happy_villager ~ ~ ~ 0.6 0.6 0.6 0.1 30