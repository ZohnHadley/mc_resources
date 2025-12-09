execute unless data entity @s {NoAI:1b} run tag @s add svm_ep.return_ai
execute unless data entity @s {Silent:1b} run tag @s add svm_ep.return_voice
execute unless data entity @s {NoGravity:1b} run tag @s add svm_ep.return_gravity


execute store result score @s svm_ep.motion_x run data get entity @s Motion[0] 10000
execute store result score @s svm_ep.motion_y run data get entity @s Motion[1] 10000
execute store result score @s svm_ep.motion_z run data get entity @s Motion[2] 10000

execute store result score @s svm_ep.fuse run data get entity @s Fuse

execute unless entity @s[scores={svm_ep.time_stopping=1..}] run scoreboard players set @s svm_ep.time_stopped 100
execute unless entity @s[scores={svm_ep.time_stopping=1..}] run scoreboard players operation @s svm_ep.time_stopped = @n[scores={svm_ep.time_stopping=1..}] svm_ep.time_stopping


attribute @s minecraft:gravity modifier add svm_ep.time_stopped -1 add_multiplied_base
attribute @s minecraft:movement_speed modifier add svm_ep.time_stopped -1 add_multiplied_base

attribute @s minecraft:block_break_speed modifier add svm_ep.time_stopped -1 add_multiplied_base
attribute @s minecraft:block_interaction_range modifier add svm_ep.time_stopped -1 add_multiplied_base
attribute @s minecraft:entity_interaction_range modifier add svm_ep.time_stopped -1 add_multiplied_base

execute as @s[type=player] at @s summon marker run function svm_ep:time/setup_player_movement_restriction

data merge entity @s {NoAI:1b,Motion:[0d,0d,0d],NoGravity:1b,Silent:1b}