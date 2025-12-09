tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[tag=svm_ep.flora_user,distance=..60] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id






execute at @s[tag=!explode] run function svm_ep:power/flora/leaf_storm/move
execute at @s[tag=!explode] run function svm_ep:power/flora/leaf_storm/move
execute at @s[tag=!explode] run function svm_ep:power/flora/leaf_storm/move
execute at @s[tag=!explode] run function svm_ep:power/flora/leaf_storm/move
execute at @s[tag=!explode] run function svm_ep:power/flora/leaf_storm/move
execute at @s run playsound minecraft:block.grass.place ambient @a[distance=..25] ~ ~ ~ 0.4 0.8
execute at @s run particle minecraft:block{block_state:birch_leaves} ~ ~ ~ 2 2 2 1 4
execute at @s run particle minecraft:small_gust ~ ~ ~ 1.7 1.7 1.7 0.5 3
execute at @s run particle minecraft:dust{color:[0.2f,0.7f,0.4f],scale:1.8f} ~ ~ ~ 1.8 1.8 1.8 0 2

execute as @e[tag=hitby] at @s run function svm_ep:power/flora/leaf_storm/in_range

tag @s remove executor
tag @e remove same_id
kill @s[scores={svm_ep.lifetime=10..}]
kill @s[tag=explode]