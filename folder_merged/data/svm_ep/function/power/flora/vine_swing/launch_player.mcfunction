#execute at @s run particle minecraft:end_rod ^ ^1 ^1 0.2 0.2 0.2 0 10
execute if predicate svm_ep:input/sneak run kill @n[tag=executor]
scoreboard players operation $strength player_motion.api.launch = %flora_vine_swing_strength svm_ep.world_settings
scoreboard players operation $strength player_motion.api.launch *= %distance svm_ep.numbers

execute at @s facing entity @n[tag=executor] eyes run function player_motion:api/launch_looking
scoreboard players operation $strength player_motion.api.launch = %flora_vine_swing_strength_player svm_ep.world_settings
#execute at @s run function player_motion:api/launch_looking
execute at @s run scoreboard players add @n[tag=executor,distance=..2] svm_ep.lifetime 40