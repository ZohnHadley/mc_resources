

execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 1 if predicate svm_ep:chance/50_percent run place feature svm_ep:flora/sapling/oak
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 1 if predicate svm_ep:chance/25_percent run place feature svm_ep:flora/sapling/birch
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 1 if predicate svm_ep:chance/5_percent run place feature minecraft:forest_flowers

execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 2 run place feature minecraft:patch_taiga_grass
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 2 if predicate svm_ep:chance/75_percent run place feature svm_ep:flora/sapling/spruce
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 2 if predicate svm_ep:chance/15_percent run place feature minecraft:patch_berry_bush
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 2 if predicate svm_ep:chance/30_percent run place feature minecraft:patch_large_fern


execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 3 if block ~ ~ ~ #svm_ep:no_physical_hitbox run setblock ~ ~ ~ air
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 3 if predicate svm_ep:chance/25_percent run place feature svm_ep:flora/sapling/jungle
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 3 if predicate svm_ep:chance/50_percent run place feature svm_ep:flora/bamboo
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 3 if predicate svm_ep:chance/70_percent run place feature svm_ep:flora/vines
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 3 if predicate svm_ep:chance/10_percent positioned ~ ~-1 ~ if block ~ ~ ~ #svm_ep:ground summon marker run function svm_ep:power/flora/tree_big/place_bush

execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 3 if predicate svm_ep:chance/50_percent run place feature minecraft:patch_grass_jungle
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 3 if predicate svm_ep:chance/50_percent run place feature minecraft:patch_grass_jungle



execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 4 run place feature minecraft:patch_cactus
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 4 run place feature minecraft:patch_dead_bush
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 4 if predicate svm_ep:chance/30_percent run place feature minecraft:patch_dead_bush

execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 5 run place feature minecraft:patch_brown_mushroom
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 5 run place feature minecraft:patch_red_mushroom

execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 6 run place feature minecraft:warped_forest_vegetation
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 6 run place feature minecraft:nether_sprouts
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 6 if predicate svm_ep:chance/50_percent run place feature minecraft:twisting_vines_bonemeal
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 6 if predicate svm_ep:chance/25_percent run place feature minecraft:twisting_vines

execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 7 run place feature minecraft:crimson_forest_vegetation_bonemeal

execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 8 run place feature minecraft:patch_tall_grass ~ ~-1 ~
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 8 if predicate svm_ep:chance/30_percent run place feature minecraft:flower_plain
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 8 if predicate svm_ep:chance/10_percent run place feature minecraft:patch_pumpkin

execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 9 run place feature minecraft:kelp
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 9 run place feature minecraft:seagrass_tall
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 9 run place feature minecraft:seagrass_tall
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 9 run place feature minecraft:seagrass_tall

execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 10 if predicate svm_ep:chance/5_percent run place feature minecraft:forest_flowers
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 10 if predicate svm_ep:chance/50_percent run place feature svm_ep:flora/sapling/dark_oak
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 10 if predicate svm_ep:chance/20_percent run place feature svm_ep:flora/sapling/oak
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 10 if predicate svm_ep:chance/10_percent run place feature svm_ep:flora/sapling/birch

execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 11 run place feature minecraft:patch_tall_grass ~ ~-1 ~
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 11 if predicate svm_ep:chance/10_percent run place feature svm_ep:flora/sapling/acacia

execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 12 if predicate svm_ep:chance/20_percent run place feature minecraft:flower_cherry
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 12 if predicate svm_ep:chance/30_percent run place feature svm_ep:flora/sapling/cherry

execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 13 if predicate svm_ep:chance/30_percent run place feature minecraft:flower_swamp
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 13 if predicate svm_ep:chance/30_percent run place feature svm_ep:flora/sapling/mangrove
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 13 if predicate svm_ep:chance/30_percent run place feature minecraft:patch_waterlily


execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 14 if predicate svm_ep:chance/50_percent run place feature minecraft:moss_patch_bonemeal

execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 15 if predicate svm_ep:chance/5_percent run place feature minecraft:forest_flowers
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 15 if predicate svm_ep:chance/50_percent run place feature svm_ep:flora/sapling/birch

execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 16 if predicate svm_ep:chance/50_percent run place feature svm_ep:flora/sapling/pale_oak
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 16 if predicate svm_ep:chance/50_percent run place feature minecraft:pale_moss_patch
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 16 if predicate svm_ep:chance/10_percent run place feature minecraft:pale_forest_flowers
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 16 if predicate svm_ep:chance/70_percent run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:pale_moss_block replace minecraft:grass_block
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 16 if predicate svm_ep:chance/70_percent run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 minecraft:pale_moss_block replace minecraft:moss_block
execute if score %FORESTIFY_CLIMATE svm_ep.world_settings matches 16 if predicate svm_ep:chance/70_percent run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 minecraft:pale_moss_carpet replace minecraft:moss_carpet
