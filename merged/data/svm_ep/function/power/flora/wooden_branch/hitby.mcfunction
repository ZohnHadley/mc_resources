tag @s remove hitby
damage @s 4 minecraft:mob_projectile by @e[tag=same_id,limit=1]
effect give @s minecraft:slowness 5 4 true
particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0.8 10
execute at @n[tag=executor] run tp @s ^ ^ ^1