scoreboard players set @s svm_ep.effect 1
scoreboard players set @s svm_ep.e.grass_step 1

execute at @s if block ~ ~-0.5 ~ minecraft:ice unless entity @s[scores={svm_ep.e.grass_step_1=1..}] run attribute @s minecraft:movement_speed modifier add svm_ep.e.grass_step_1 0.25 add_multiplied_total
execute at @s if block ~ ~-0.5 ~ minecraft:packed_ice unless entity @s[scores={svm_ep.e.grass_step_2=1..}] run attribute @s minecraft:movement_speed modifier add svm_ep.e.grass_step_2 0.33 add_multiplied_total
execute at @s if block ~ ~-0.5 ~ minecraft:blue_ice unless entity @s[scores={svm_ep.e.grass_step_3=1..}] run attribute @s minecraft:movement_speed modifier add svm_ep.e.grass_step_3 1.25 add_multiplied_total


execute at @s if block ~ ~-0.5 ~ minecraft:ice run scoreboard players set @s svm_ep.e.grass_step_1 15
execute at @s if block ~ ~-0.5 ~ minecraft:packed_ice run scoreboard players set @s svm_ep.e.grass_step_2 10
execute at @s if block ~ ~-0.5 ~ minecraft:blue_ice run scoreboard players set @s svm_ep.e.grass_step_3 5
execute at @s if block ~ ~-0.5 ~ #minecraft:ice run attribute @s minecraft:step_height modifier add svm_ep.e.ice_slide 1.25 add_value
execute at @s if block ~ ~-0.5 ~ #minecraft:ice run scoreboard players add @s svm_ep.mana_drain 2


execute at @s run particle minecraft:item{item:ice} ~ ~ ~ 1 0 1 0.1 2
execute at @s run particle minecraft:item{item:snow_block} ~ ~ ~ 1 0 1 0.1 2

scoreboard players reset @s[scores={svm_ep.mana=..1}] svm_ep.p.ice_slide