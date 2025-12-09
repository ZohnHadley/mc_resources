#execute at @s run particle minecraft:end_rod ^ ^1 ^1 0.2 0.2 0.2 0 10
tag @n[tag=executor] add svm_ep.active


scoreboard players operation $strength player_motion.api.launch = %flora_vine_swing_strength_on_launch svm_ep.world_settings
scoreboard players operation $strength player_motion.api.launch *= %distance svm_ep.numbers


execute at @s run playsound minecraft:item.lead.tied master @a[distance=..35] ~ ~ ~ 1 1.2 0.2

execute at @s facing entity @n[tag=executor] eyes run function player_motion:api/launch_looking
execute at @s run scoreboard players add @n[tag=executor,distance=..2] svm_ep.lifetime 40
execute at @s run playsound minecraft:item.lead.tied master @a ~ ~ ~ 1 1.2
execute at @n[tag=executor] run playsound minecraft:item.lead.tied master @a[distance=..35] ~ ~ ~ 1 1.6 0.2
