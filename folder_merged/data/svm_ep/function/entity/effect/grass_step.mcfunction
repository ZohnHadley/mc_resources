scoreboard players set @s svm_ep.effect 1

scoreboard players remove @s[scores={svm_ep.e.grass_step_1=1..}] svm_ep.e.grass_step_1 1
scoreboard players remove @s[scores={svm_ep.e.grass_step_2=1..}] svm_ep.e.grass_step_2 1
scoreboard players remove @s[scores={svm_ep.e.grass_step_3=1..}] svm_ep.e.grass_step_3 1


execute unless entity @s[scores={svm_ep.e.grass_step_1=1..}] unless entity @s[scores={svm_ep.e.grass_step_2=1..}] unless entity @s[scores={svm_ep.e.grass_step_3=1..}] run scoreboard players reset @s svm_ep.e.grass_step
execute unless entity @s[scores={svm_ep.e.grass_step_1=1..}] run attribute @s minecraft:movement_speed modifier remove svm_ep.e.grass_step_1
execute unless entity @s[scores={svm_ep.e.grass_step_2=1..}] run attribute @s minecraft:movement_speed modifier remove svm_ep.e.grass_step_2
execute unless entity @s[scores={svm_ep.e.grass_step_3=1..}] run attribute @s minecraft:movement_speed modifier remove svm_ep.e.grass_step_3

execute at @s unless block ~ ~-0.5 ~ #minecraft:ice run attribute @s minecraft:step_height modifier remove svm_ep.e.ice_slide