scoreboard players operation $strength player_motion.api.launch = %flora_vine_swing_strength svm_ep.world_settings
scoreboard players operation $strength player_motion.api.launch *= @n[tag=executor] svm_ep.lifetime
scoreboard players operation $strength player_motion.api.launch *= %17 svm_ep.numbers
scoreboard players operation $strength player_motion.api.launch /= %4 svm_ep.numbers

execute at @n[tag=executor] facing ^ ^ ^-1 run function player_motion:api/launch_looking
#scoreboard players operation $strength player_motion.api.launch = %flora_vine_swing_strength_player svm_ep.world_settings
#execute at @s run function player_motion:api/launch_looking
execute at @s run scoreboard players add @n[tag=executor,distance=..2] svm_ep.lifetime 400