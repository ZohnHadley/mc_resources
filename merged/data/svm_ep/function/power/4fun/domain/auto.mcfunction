damage @s 1.5 minecraft:no_cooldown by @e[tag=executor4,limit=1]
particle minecraft:sweep_attack ~ ~0.7 ~ 0.35 0.35 0.35 1 1
particle minecraft:sweep_attack ~ ~1 ~ 0.35 0.35 0.35 1 1
particle minecraft:sweep_attack ~ ~1.3 ~ 0.35 0.35 0.35 1 1
playsound minecraft:entity.player.attack.sweep ambient @a ~ ~ ~ 1 1.5
particle minecraft:crit ~ ~0.8 ~ 0.3 0.7 0.3 3.5 10
effect give @s slowness 1 3 true