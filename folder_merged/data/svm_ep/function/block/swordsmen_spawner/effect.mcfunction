execute at @s run advancement grant @a[distance=..15] only svm_ep:storyline/spawn_swordsmen_from_spawner
execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~ ~ 0 0 0 0 1
execute at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 1 50
execute at @s run particle minecraft:bubble_pop ~ ~ ~ 1 1 1 0 10
execute at @s run playsound minecraft:entity.husk.converted_to_zombie master @a ~ ~ ~ 0.6 0.7