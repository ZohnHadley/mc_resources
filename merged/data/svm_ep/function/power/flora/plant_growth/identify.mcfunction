#execute if block ~ ~ ~ #svm_ep:replace_to_mossy_cobblestone run function svm_ep:power/flora/mossify/summon
#IF RAYCAST ON ICE
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust{color:[0.25,0.85,0.3],scale:1.5f} ~ ~ ~ 0.35 0.35 0.35 0.01 3 force @a[distance=..150]
playsound minecraft:block.chorus_flower.death block @a[distance=..25] ~ ~ ~ 0.6 2 0.1

scoreboard players operation %CHANCE svm_ep.numbers = @s svm_ep.p.flora_plant_growth_success_rate.lvl
scoreboard players operation %CHANCE svm_ep.numbers += @s svm_ep.p.flora_score
scoreboard players operation %CHANCE svm_ep.numbers /= %DISTANCE svm_ep.numbers
scoreboard players operation %CHANCE svm_ep.numbers /= %DISTANCE svm_ep.numbers
execute store success score %SUCCESS svm_ep.numbers if predicate [{condition:"minecraft:random_chance",chance:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"%CHANCE"},score:"svm_ep.numbers",scale:0.01}}]




execute if score %SUCCESS svm_ep.numbers matches 0 run return run function svm_ep:power/flora/plant_growth/gain_score

execute if block ~ ~ ~ #svm_ep:saplings run return run function svm_ep:power/flora/plant_growth/sapling
place feature minecraft:seagrass_slightly_less_short
execute if block ~ ~ ~ minecraft:chorus_flower[age=5] run setblock ~ ~ ~ minecraft:chorus_flower
execute if block ~ ~ ~ minecraft:wheat unless block ~ ~ ~ minecraft:wheat[age=7] run setblock ~ ~ ~ minecraft:wheat[age=7]
execute if block ~ ~ ~ minecraft:carrots unless block ~ ~ ~ minecraft:carrots[age=7] run setblock ~ ~ ~ minecraft:carrots[age=7]
execute if block ~ ~ ~ minecraft:potatoes unless block ~ ~ ~ minecraft:potatoes[age=7] run setblock ~ ~ ~ minecraft:potatoes[age=7]
execute if block ~ ~ ~ minecraft:nether_wart unless block ~ ~ ~ minecraft:nether_wart[age=3] run setblock ~ ~ ~ minecraft:nether_wart[age=3]
execute if block ~ ~ ~ minecraft:sweet_berry_bush unless block ~ ~ ~ minecraft:sweet_berry_bush[age=3] run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=3]
execute if block ~ ~ ~ minecraft:sugar_cane unless block ~ ~1 ~ minecraft:sugar_cane if block ~ ~1 ~ #svm_ep:air run setblock ~ ~1 ~ minecraft:sugar_cane
execute if block ~ ~ ~ minecraft:sugar_cane if block ~ ~1 ~ minecraft:sugar_cane unless block ~ ~2 ~ minecraft:sugar_cane if block ~ ~2 ~ #svm_ep:air run setblock ~ ~1 ~ minecraft:sugar_cane
execute if block ~ ~ ~ minecraft:melon_stem[age=7] run loot spawn ~ ~ ~ loot minecraft:blocks/melon
execute if block ~ ~ ~ minecraft:melon_stem unless block ~ ~ ~ minecraft:melon_stem[age=7] run setblock ~ ~ ~ minecraft:melon_stem[age=7]
execute if block ~ ~ ~ minecraft:pumpkin_stem[age=7] run loot spawn ~ ~ ~ loot minecraft:blocks/pumpkin
execute if block ~ ~ ~ minecraft:pumpkin_stem unless block ~ ~ ~ minecraft:pumpkin_stem[age=7] run setblock ~ ~ ~ minecraft:pumpkin_stem[age=7]
execute if block ~ ~ ~ minecraft:torchflower_crop run setblock ~ ~ ~ minecraft:torchflower
execute if block ~ ~ ~ minecraft:pitcher_crop unless block ~ ~ ~ minecraft:pitcher_crop[age=4] if block ~ ~1 ~ #svm_ep:air run setblock ~ ~1 ~ minecraft:pitcher_crop[age=4,half=upper]
execute if block ~ ~ ~ minecraft:pitcher_crop unless block ~ ~ ~ minecraft:pitcher_crop[age=4] run setblock ~ ~ ~ minecraft:pitcher_crop[age=4]
execute if block ~ ~ ~ minecraft:grass_block run place feature minecraft:patch_grass
execute if block ~ ~ ~ minecraft:grass_block run place feature minecraft:patch_grass
execute if block ~ ~ ~ minecraft:grass_block run place feature minecraft:patch_grass
execute if block ~ ~ ~ minecraft:podzol run place feature minecraft:patch_tall_grass
execute if block ~ ~ ~ minecraft:dead_bush run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=1]
execute if block ~ ~ ~ minecraft:dirt if block ~ ~1 ~ #svm_ep:no_physical_hitbox unless block ~ ~1 ~ minecraft:water run setblock ~ ~ ~ minecraft:grass_block

execute if block ~ ~ ~ minecraft:moss_block run place feature minecraft:moss_patch_bonemeal
execute if block ~ ~ ~ minecraft:moss_block unless block ~ ~1 ~ #svm_ep:no_physical_hitbox run place feature minecraft:moss_patch_ceiling
execute if block ~ ~ ~ minecraft:mossy_cobblestone run setblock ~ ~ ~ minecraft:moss_block
execute if block ~ ~ ~ minecraft:cobblestone run setblock ~ ~ ~ minecraft:mossy_cobblestone
execute if block ~ ~ ~ minecraft:infested_mossy_stone_bricks run setblock ~ ~ ~ minecraft:moss_block
execute if block ~ ~ ~ minecraft:mossy_stone_bricks run setblock ~ ~ ~ minecraft:moss_block
execute if block ~ ~ ~ minecraft:stone_bricks run setblock ~ ~ ~ minecraft:mossy_stone_bricks

execute if block ~ ~ ~ minecraft:beetroots unless block ~ ~ ~ minecraft:beetroots[age=3] run setblock ~ ~ ~ minecraft:beetroots[age=3]
execute as @s run playsound minecraft:block.rooted_dirt.place block @a[distance=..25] ~ ~ ~ 1.3 0
execute as @s run playsound minecraft:block.grass.break block @a[distance=..25] ~ ~ ~ 1 0.6
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:happy_villager ~ ~ ~ 0.34 0.34 0.34 0.1 15
scoreboard players add @s svm_ep.mana_drain 150
scoreboard players add @s svm_ep.used_move 5
