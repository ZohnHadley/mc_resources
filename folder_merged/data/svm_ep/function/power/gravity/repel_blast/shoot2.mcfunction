execute at @s run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 2 0.6
execute at @s run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 2 1.6
execute at @s run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 2 2
effect clear @a[tag=immune] slowness

effect give @a[distance=..30] minecraft:blindness 1 0 true
tp @e[tag=new] @s
execute as @e[tag=new] at @s run tp @s ~ ~ ~ facing entity @e[tag=target,limit=1,distance=..8]
execute at @s anchored eyes positioned ^ ^ ^.15 run tp @e[tag=new,distance=..8] ~ ~ ~
execute at @s anchored eyes positioned ^ ^ ^.4 run particle minecraft:end_rod ~ ~ ~ 0.06 0.06 0.06 0.55 130
data modify entity @s Rotation set from entity @a[tag=immune,limit=1,distance=..8] Rotation