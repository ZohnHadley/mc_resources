execute if block ~ ~ ~ water run return 0
execute if entity @e[tag=svm_ep.placed_water,distance=..0.5] run return run scoreboard players set @n[tag=svm_ep.placed_water,distance=..0.5] svm_ep.lifetime -1

execute if block ~ ~ ~ #svm_ep:no_physical_hitbox run setblock ~ ~ ~ water[level=15]
execute if block ~ ~ ~ water run summon item_display ~ ~ ~ {Tags:["svm_ep.temporary_block_water","svm_ep.temporary_block","svm_ep.temporary_block_water_fast"],Fire:-1} 