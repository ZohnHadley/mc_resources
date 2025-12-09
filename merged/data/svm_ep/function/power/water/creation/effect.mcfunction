execute if dimension minecraft:the_nether align xyz positioned ~0.5 ~0.5 ~0.5 run return run function svm_ep:power/water/creation/variant/nether
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:power/water/place_effect

execute as @s[scores={svm_ep.selected_ability=3}] run function svm_ep:power/water/creation/variant/flowing_movement
execute as @s[scores={svm_ep.selected_ability=4}] run function svm_ep:power/water/creation/variant/manipulation

execute positioned ^ ^ ^0.15 if block ~ ~ ~ minecraft:farmland unless block ~ ~ ~ minecraft:farmland[moisture=7] align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:power/water/place_effect
execute positioned ^ ^ ^0.15 if block ~ ~ ~ minecraft:farmland unless block ~ ~ ~ minecraft:farmland[moisture=7] run return run setblock ~ ~ ~ minecraft:farmland[moisture=7]
execute positioned ^ ^ ^0.15 if block ~ ~ ~ minecraft:cauldron align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:power/water/place_effect
execute positioned ^ ^ ^0.15 if block ~ ~ ~ minecraft:cauldron run return run setblock ~ ~ ~ minecraft:water_cauldron[level=3]

execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run return 0
execute if block ~ ~ ~ water[level=8] run setblock ~ ~ ~ water[level=0]
execute align xyz positioned ~0.5 ~0.5 ~0.5 run scoreboard players set @e[tag=svm_ep.placed_water,distance=..1.5] svm_ep.lifetime -40
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ water[level=0] unless block ~ ~ ~ water[level=8] unless entity @e[tag=svm_ep.placed_water,distance=..0.2] run summon item_display ~ ~ ~ {Tags:["svm_ep.temporary_block_water","svm_ep.temporary_block"],Fire:-40}
execute if block ~ ~ ~ water[level=1] run setblock ~ ~ ~ water[level=0]
execute if block ~ ~ ~ water[level=2] run setblock ~ ~ ~ water[level=1]
execute if block ~ ~ ~ water[level=3] run setblock ~ ~ ~ water[level=2]
execute if block ~ ~ ~ water[level=4] run setblock ~ ~ ~ water[level=3]
execute if block ~ ~ ~ water[level=5] run setblock ~ ~ ~ water[level=4]
execute if block ~ ~ ~ water[level=6] run setblock ~ ~ ~ water[level=5]
execute if block ~ ~ ~ water[level=7] run setblock ~ ~ ~ water[level=6]
execute unless block ~ ~ ~ water run setblock ~ ~ ~ water[level=7]
execute unless block ~-1 ~ ~ #svm_ep:no_physical_hitbox unless block ~1 ~ ~ #svm_ep:no_physical_hitbox unless block ~ ~ ~-1 #svm_ep:no_physical_hitbox unless block ~ ~ ~1 #svm_ep:no_physical_hitbox run setblock ~ ~ ~ water