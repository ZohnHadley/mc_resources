execute positioned ~ ~3.5 ~ run particle minecraft:cherry_leaves ~ ~ ~ 0.5 0.06 0.5 1 3
scoreboard players set @e[distance=..4,type=!#svm_ep:technical] svm_ep.p.flora_blooming_effect 140
particle minecraft:sweep_attack ~ ~0.8 ~ 0.15 0.15 0.15 0.7 1
particle minecraft:flash{color:0xffffffff} ~ ~0.8 ~
particle minecraft:end_rod ~ ~0.8 ~ 0 0 0 0.015 3
particle minecraft:snowflake ~ ~1 ~ 0 0 0 0.7 15

execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
execute unless entity @s[distance=..14] run tag @s add end_raycast

execute as @s[tag=!end_raycast] positioned ^ ^ ^0.1 run function svm_ep:power/flora/blooming_flash/raycast
execute as @s[tag=end_raycast] run function svm_ep:power/flora/blooming_flash/end
