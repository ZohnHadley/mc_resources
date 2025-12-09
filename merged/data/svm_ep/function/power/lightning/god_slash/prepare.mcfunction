execute at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^1.1
execute at @s run playsound minecraft:block.netherrack.break master @a[distance=..30] ~ ~ ~ 3 0
execute at @s run playsound minecraft:block.beacon.activate ambient @a[distance=..20] ~ ~ ~ 2 2
execute at @s run playsound minecraft:entity.ender_dragon.ambient master @a[distance=..30] ~ ~ ~ 2 0.8
effect give @s minecraft:slowness 1 6 true
