
scoreboard players set $strength player_motion.api.launch 8800
execute at @s run function player_motion:api/launch_looking
scoreboard players reset @s svm_ep.using_move
particle minecraft:bubble_pop ~ ~ ~ 0.4 0.4 0.4 0.1 40
playsound minecraft:item.bucket.empty master @a[distance=..34] ~ ~ ~ 1.3 0.9 0.1
playsound minecraft:item.trident.riptide_2 master @a[distance=..34] ~ ~ ~ 0.5 1.1 0.1