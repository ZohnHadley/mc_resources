execute at @s run spreadplayers ~ ~ 0 30 false @s
execute at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~

execute at @s if dimension minecraft:the_nether run spreadplayers ~ ~ 20 30 under 124 false @s
execute at @s positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:base_stone_overworld if predicate svm_ep:chance/33_percent run place feature minecraft:moss_patch
execute at @s positioned ~ ~-1 ~ if predicate svm_ep:chance/25_percent run place feature minecraft:patch_grass

execute at @s positioned ~ ~-1 ~ if block ~ ~ ~ #svm_ep:ground summon marker run function svm_ep:power/flora/tree_big/place_forestify
execute at @s if predicate svm_ep:chance/80_percent at @s run place feature minecraft:seagrass_slightly_less_short
execute at @s if predicate svm_ep:chance/50_percent at @s run place feature minecraft:kelp
execute at @s run place feature minecraft:patch_grass
execute at @s run place feature minecraft:patch_grass
execute at @s run place feature minecraft:patch_grass
execute at @s if predicate svm_ep:chance/25_percent summon marker run function svm_ep:power/flora/junglification/spawn_vegetation2
execute if predicate svm_ep:chance/33_percent at @s positioned ~ ~-1 ~ run function svm_ep:power/flora/mossify/summon


kill @s[type=!player]