scoreboard players set @s svm_ep.effect 1
scoreboard players set @s svm_ep.e.grass_step 1
scoreboard players remove @s svm_ep.p.flora_grass_step 1

execute at @s if block ~ ~-0.5 ~ minecraft:grass_block unless entity @s[scores={svm_ep.e.grass_step_1=1..}] run attribute @s minecraft:movement_speed modifier add svm_ep.e.grass_step_1 0.25 add_multiplied_total
execute at @s if block ~ ~0.5 ~ minecraft:short_grass unless entity @s[scores={svm_ep.e.grass_step_2=1..}] run attribute @s minecraft:movement_speed modifier add svm_ep.e.grass_step_2 0.33 add_multiplied_total
execute at @s if block ~ ~0.5 ~ minecraft:tall_grass unless entity @s[scores={svm_ep.e.grass_step_3=1..}] run attribute @s minecraft:movement_speed modifier add svm_ep.e.grass_step_3 1.25 add_multiplied_total


execute at @s if block ~ ~-0.5 ~ minecraft:grass_block run scoreboard players set @s svm_ep.e.grass_step_1 15
execute at @s if block ~ ~0.5 ~ minecraft:short_grass run scoreboard players set @s svm_ep.e.grass_step_2 10
execute at @s if block ~ ~0.5 ~ minecraft:tall_grass run scoreboard players set @s svm_ep.e.grass_step_3 5

