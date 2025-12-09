execute as @e[tag=hitby] run damage @s 2 minecraft:no_cooldown by @n[tag=same_id]
tag @e remove hitby
playsound minecraft:entity.arrow.hit master @a[distance=..25] ~ ~ ~ 0.5 2
kill @s