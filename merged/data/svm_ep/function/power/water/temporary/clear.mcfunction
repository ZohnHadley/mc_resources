execute as @s[tag=svm_ep.temporary_block_water_fast] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace water
execute as @s[tag=svm_ep.temporary_block_water_fast] run return run kill @s
scoreboard players set @s svm_ep.numbers 0
execute if block ~ ~1 ~ water[level=15] run scoreboard players set @s svm_ep.numbers 1

scoreboard players set 0x svm_ep.numbers 0
scoreboard players set 1x svm_ep.numbers 0
scoreboard players set x0 svm_ep.numbers 0
scoreboard players set x1 svm_ep.numbers 0

execute if block ~-1 ~ ~ water[level=0] run scoreboard players set 0x svm_ep.numbers 1
execute unless block ~-1 ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set 0x svm_ep.numbers 1
execute if block ~1 ~ ~ water[level=0] run scoreboard players set 1x svm_ep.numbers 1
execute unless block ~1 ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set 1x svm_ep.numbers 1
execute if block ~ ~ ~-1 water[level=0] run scoreboard players set x0 svm_ep.numbers 1
execute unless block ~ ~ ~-1 #svm_ep:no_physical_hitbox run scoreboard players set x0 svm_ep.numbers 1
execute if block ~ ~ ~1 water[level=0] run scoreboard players set x1 svm_ep.numbers 1
execute unless block ~ ~ ~1 #svm_ep:no_physical_hitbox run scoreboard players set x1 svm_ep.numbers 1

execute if score 0x svm_ep.numbers matches 1 if score 1x svm_ep.numbers matches 1 if score x0 svm_ep.numbers matches 1 if score x1 svm_ep.numbers matches 1 run scoreboard players set @s svm_ep.numbers 1
execute as @s[scores={svm_ep.numbers=0}] if block ~ ~ ~ water[level=0] run setblock ~ ~ ~ water[level=15]

kill @s
