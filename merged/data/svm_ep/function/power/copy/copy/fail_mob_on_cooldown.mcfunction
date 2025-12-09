function svm_ep:system/message/target_on_copy_cooldown
effect give @s minecraft:slowness 1 3 true
effect give @s minecraft:weakness 1 3 true

scoreboard players set $strength player_motion.api.launch 8000
playsound minecraft:block.anvil.land master @a[distance=..25] ~ ~ ~ 1 0.5
playsound minecraft:block.anvil.land master @a[distance=..25] ~ ~ ~ 1 0.8
playsound minecraft:block.anvil.land master @a[distance=..25] ~ ~ ~ 1 1.3
particle minecraft:portal ~ ~ ~ 1 1 1 0.7 70

execute at @s anchored eyes facing ^ ^ ^-1 run function player_motion:api/launch_looking