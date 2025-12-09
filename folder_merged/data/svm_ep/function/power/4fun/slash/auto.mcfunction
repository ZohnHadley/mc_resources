tag @s add executor4
execute as @e[dx=0,tag=!executor4] run damage @s 6 minecraft:no_cooldown by @e[tag=executor4,limit=1]

execute as @e[dx=0,tag=!executor4] run scoreboard players operation @s sm.fukuma_hitby = @e[tag=executor4] sm.fukuma

particle minecraft:sweep_attack ~ ~0.4 ~ 0.35 0.35 0.35 1 3
particle minecraft:sweep_attack ~ ~1 ~ 0.35 0.35 0.35 1 3
particle minecraft:sweep_attack ~ ~1.6 ~ 0.35 0.35 0.35 1 3
playsound minecraft:entity.player.attack.sweep ambient @a ~ ~ ~ 1 1.3
particle minecraft:crit ~ ~0.8 ~ 0.3 0.7 0.3 0.5 30
tag @s remove executor4
