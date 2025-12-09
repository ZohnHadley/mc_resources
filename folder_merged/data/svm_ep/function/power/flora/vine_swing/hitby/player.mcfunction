scoreboard players operation $strength player_motion.api.launch = %flora_vine_swing_strength svm_ep.world_settings
scoreboard players operation $strength player_motion.api.launch *= %distance svm_ep.numbers

execute at @s facing entity @n[tag=same_id] eyes run function player_motion:api/launch_looking
scoreboard players operation $strength player_motion.api.launch = %flora_vine_swing_strength_player svm_ep.world_settings
#execute at @s run function player_motion:api/launch_looking
execute at @s run scoreboard players add @n[tag=executor,distance=..2] svm_ep.lifetime 40