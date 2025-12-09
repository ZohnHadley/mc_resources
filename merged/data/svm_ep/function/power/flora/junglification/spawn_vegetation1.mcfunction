spreadplayers ~ ~ 60 70 false @s
execute at @s positioned over ocean_floor run tp @s ~ ~ ~
execute at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute at @s if dimension minecraft:the_nether run spreadplayers ~ ~ 60 70 under 124 false @s
execute store result score @s svm_ep.numbers run random value 1..5
execute at @s if biome ~ ~ ~ #minecraft:is_ocean run scoreboard players set @s svm_ep.numbers 6
execute at @s[scores={svm_ep.numbers=1..3}] if dimension minecraft:overworld if predicate svm_ep:chance/10_percent run place feature minecraft:moss_patch

tag @s add instant
execute store result score @s svm_ep.p.flora_tree_size run random value 0..5
execute at @s[scores={svm_ep.numbers=2..4}] if block ~ ~-1 ~ #svm_ep:ground summon marker run function svm_ep:power/flora/tree_big/place

execute at @s[scores={svm_ep.numbers=1..4}] if dimension minecraft:overworld if predicate svm_ep:chance/25_percent run place feature minecraft:patch_grass
execute if predicate svm_ep:chance/80_percent at @s run place feature minecraft:seagrass_slightly_less_short
execute if predicate svm_ep:chance/50_percent at @s run place feature minecraft:kelp
execute if predicate svm_ep:chance/10_percent at @s positioned ~ ~-1 ~ run function svm_ep:power/flora/mossify/summon
tag @s remove instant
kill @s