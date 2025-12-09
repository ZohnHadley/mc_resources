scoreboard players remove @s svm_ep.p.flora_junglification 1
scoreboard players add %WORLD_SPEED svm_ep.world_settings 32
execute as @a at @s run particle minecraft:end_rod ~ ~1 ~ 4 4 4 0.07 1 force @s
execute at @s run particle minecraft:end_rod ~ ~1 ~ 4 4 4 0.13 1

execute if predicate svm_ep:chance/33_percent as @r at @s run function svm_ep:power/flora/junglification/spawn_vegetation0

