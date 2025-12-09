damage @s 5 minecraft:player_attack by @e[tag=same_id,limit=1]
effect give @s slowness 2 0 true

execute at @s run playsound minecraft:entity.slime.squish master @a[distance=..20] ~ ~1 ~ 1 0
