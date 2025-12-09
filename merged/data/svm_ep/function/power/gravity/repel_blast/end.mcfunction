particle minecraft:end_rod ~ ~ ~ 0 0 0 6 3000 force @a
playsound minecraft:block.end_portal.spawn master @a[distance=..50] ~ ~ ~ 0.43 0.7
playsound minecraft:block.end_portal.spawn master @a[distance=..50] ~ ~ ~ 0.43 2
playsound minecraft:entity.allay.ambient_without_item master @a ~ ~ ~ 2 2
effect clear @a[distance=..15] slow_falling
kill @s