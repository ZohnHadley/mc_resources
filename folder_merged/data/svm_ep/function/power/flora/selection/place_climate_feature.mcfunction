

execute as @s[scores={svm_ep.p.flora_climate=1}] run place feature minecraft:forest_flowers
execute as @s[scores={svm_ep.p.flora_climate=2}] run place feature minecraft:patch_taiga_grass
execute as @s[scores={svm_ep.p.flora_climate=2}] run place feature minecraft:patch_berry_bush
execute as @s[scores={svm_ep.p.flora_climate=3}] if block ~ ~ ~ #svm_ep:no_physical_hitbox run setblock ~ ~ ~ air
execute as @s[scores={svm_ep.p.flora_climate=3}] run place feature minecraft:bamboo_no_podzol
execute as @s[scores={svm_ep.p.flora_climate=4}] run place feature minecraft:patch_cactus
execute as @s[scores={svm_ep.p.flora_climate=4}] run place feature minecraft:patch_dead_bush
execute as @s[scores={svm_ep.p.flora_climate=4}] run place feature minecraft:patch_dead_bush
execute as @s[scores={svm_ep.p.flora_climate=5}] run place feature minecraft:patch_brown_mushroom
execute as @s[scores={svm_ep.p.flora_climate=5}] run place feature minecraft:patch_red_mushroom

execute as @s[scores={svm_ep.p.flora_climate=6}] run place feature minecraft:warped_forest_vegetation
execute as @s[scores={svm_ep.p.flora_climate=6}] run place feature minecraft:nether_sprouts
execute as @s[scores={svm_ep.p.flora_climate=6}] if predicate svm_ep:chance/50_percent run place feature minecraft:twisting_vines_bonemeal
execute as @s[scores={svm_ep.p.flora_climate=6}] if predicate svm_ep:chance/33_percent run place feature minecraft:twisting_vines
execute as @s[scores={svm_ep.p.flora_climate=7}] run place feature minecraft:crimson_forest_vegetation_bonemeal


execute as @s[scores={svm_ep.p.flora_climate=8}] run place feature minecraft:patch_tall_grass ~ ~-1 ~
execute as @s[scores={svm_ep.p.flora_climate=8}] run place feature minecraft:flower_plain
execute as @s[scores={svm_ep.p.flora_climate=8}] run place feature minecraft:patch_pumpkin
execute as @s[scores={svm_ep.p.flora_climate=9}] run place feature minecraft:kelp
execute as @s[scores={svm_ep.p.flora_climate=9}] run place feature minecraft:seagrass_tall
execute as @s[scores={svm_ep.p.flora_climate=9}] run place feature minecraft:seagrass_tall
execute as @s[scores={svm_ep.p.flora_climate=9}] run place feature minecraft:seagrass_tall
execute as @s[scores={svm_ep.p.flora_climate=10}] run place feature minecraft:forest_flowers
execute as @s[scores={svm_ep.p.flora_climate=11}] run place feature minecraft:patch_tall_grass ~ ~-1 ~
execute as @s[scores={svm_ep.p.flora_climate=12}] run place feature minecraft:flower_cherry
execute as @s[scores={svm_ep.p.flora_climate=13}] run place feature minecraft:flower_swamp
execute as @s[scores={svm_ep.p.flora_climate=14}] run place feature minecraft:moss_patch_bonemeal
execute as @s[scores={svm_ep.p.flora_climate=15}] run place feature minecraft:forest_flowers
execute as @s[scores={svm_ep.p.flora_climate=16}] run place feature minecraft:pale_moss_patch_bonemeal

scoreboard players remove @s svm_ep.mana 2
scoreboard players set @s svm_ep.p.flora_ability_09_delay 1
