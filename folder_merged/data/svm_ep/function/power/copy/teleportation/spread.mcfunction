playsound minecraft:entity.enderman.teleport master @a[distance=..30] ~ ~ ~ 0.7 0.95 0.2
particle minecraft:reverse_portal ~ ~1 ~ 0.33 0.7 0.33 0.85 30

spreadplayers ~ ~ 0 30 false @s
execute at @s if block ~ ~-1 ~ bedrock run spreadplayers ~ ~ 0 10 under 120 false @s
execute at @s run tp @s ~ ~ ~
#NEW LOCATION
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.33 0.7 0.33 0.85 30
execute at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..30] ~ ~ ~ 0.7 1.15 0.2
