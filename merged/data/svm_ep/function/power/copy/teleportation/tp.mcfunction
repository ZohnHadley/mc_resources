tag @s add executor
scoreboard players set @s svm_ep.raycast_length 100
execute at @s anchored eyes positioned ^ ^ ^ run function svm_ep:power/copy/teleportation/raycast
tag @s remove executor
effect clear @s minecraft:slowness

#OLD LOCATION
playsound minecraft:entity.enderman.teleport master @a[distance=..30] ~ ~ ~ 0.7 0.95 0.2
particle minecraft:reverse_portal ~ ~1 ~ 0.33 0.7 0.33 0.85 30



#NEW LOCATION
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.33 0.7 0.33 0.85 30
execute at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..30] ~ ~ ~ 0.7 1.15 0.2
