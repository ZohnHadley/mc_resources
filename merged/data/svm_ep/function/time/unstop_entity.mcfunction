#data merge entity @s {Silent:1b,NoAI:1b,NoGravity:1b}
data merge entity @s[tag=svm_ep.return_ai] {NoAI:0b}
data merge entity @s[tag=svm_ep.return_voice] {Silent:0b}
data merge entity @s[tag=svm_ep.return_gravity] {NoGravity:0b}
damage @s[tag=svm_ep.attacked_during_time_stop] 0.01 svm_ep:no_cooldown
tag @s remove svm_ep.return_gravity
tag @s remove svm_ep.return_voice
tag @s remove svm_ep.return_ai
tag @s remove svm_ep.attacked_during_time_stop
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s svm_ep.motion_x
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get @s svm_ep.motion_y
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s svm_ep.motion_z


attribute @s minecraft:gravity modifier remove svm_ep.time_stopped
attribute @s minecraft:movement_speed modifier remove svm_ep.time_stopped

attribute @s minecraft:block_break_speed modifier remove svm_ep.time_stopped
attribute @s minecraft:block_interaction_range modifier remove svm_ep.time_stopped
attribute @s minecraft:entity_interaction_range modifier remove svm_ep.time_stopped

execute unless entity @a[scores={svm_ep.time_stopped=1..}] run kill @e[tag=svm_ep.time_stopped_player]

effect clear @s blindness
scoreboard players reset @s svm_ep.fuse
scoreboard players reset @s svm_ep.time_stopped