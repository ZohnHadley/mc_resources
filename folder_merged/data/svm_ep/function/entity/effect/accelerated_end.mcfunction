scoreboard players remove @s svm_ep.p.time_accelerated_level 1
scoreboard players add @s svm_ep.e.accelerated 4

execute as @s[scores={svm_ep.p.time_accelerated_level=1..}] run return run function svm_ep:power/time/accelerate/calculate_acceleration

scoreboard players reset @s svm_ep.p.time_accelerated_level
scoreboard players reset @s svm_ep.e.accelerated

attribute @s minecraft:attack_speed modifier remove svm_ep.e.accelerated
attribute @s minecraft:movement_speed modifier remove svm_ep.e.accelerated
attribute @s minecraft:step_height modifier remove svm_ep.e.accelerated
attribute @s minecraft:oxygen_bonus modifier remove svm_ep.e.accelerated
attribute @s minecraft:flying_speed modifier remove svm_ep.e.accelerated
attribute @s minecraft:block_break_speed modifier remove svm_ep.e.accelerated




