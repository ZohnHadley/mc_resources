scoreboard players operation @s svm_ep.time_stopping = @s svm_ep.p.time_stop_charge
scoreboard players reset @s svm_ep.p.time_stop_charge
particle minecraft:end_rod ~ ~1 ~ 0 0 0 3 200
playsound minecraft:item.mace.smash_ground_heavy master @a ~ ~ ~ 1 0
effect give @a[distance=..40] minecraft:blindness 1 0 true