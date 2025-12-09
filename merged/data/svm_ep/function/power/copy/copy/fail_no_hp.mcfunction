function svm_ep:system/message/target_has_too_much_health
effect give @s minecraft:slowness 1 5 true
effect give @s minecraft:weakness 2 5 true

scoreboard players set $strength player_motion.api.launch 12000
playsound minecraft:block.anvil.land master @a[distance=..25] ~ ~ ~ 1 0.5
playsound minecraft:block.anvil.land master @a[distance=..25] ~ ~ ~ 1 0.8
playsound minecraft:block.anvil.land master @a[distance=..25] ~ ~ ~ 1 1.3
particle minecraft:end_rod ~ ~ ~ 1 1 1 0.7 70

execute at @s anchored eyes facing ^ ^ ^-1 run function player_motion:api/launch_looking