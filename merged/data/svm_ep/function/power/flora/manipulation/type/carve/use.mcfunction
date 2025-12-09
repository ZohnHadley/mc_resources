setblock ~ ~ ~ air destroy
execute as @e[type=item,distance=..1] if items entity @s contents minecraft:pumpkin run kill @s


playsound minecraft:item.shears.snip master @a[distance=..25] ~ ~ ~ 0.4 1.05

execute at @s positioned ~1 ~ ~ run summon minecraft:marker ~ ~ ~ {Tags:["kill","type10"]}

execute at @s positioned ~-1 ~ ~ run summon minecraft:marker ~ ~ ~ {Tags:["kill","type-10"]}

execute at @s positioned ~ ~ ~1 run summon minecraft:marker ~ ~ ~ {Tags:["kill","type01"]}
execute at @s positioned ~ ~ ~-1 run summon minecraft:marker ~ ~ ~ {Tags:["kill","type0-1"]}

execute as @n[tag=kill] as @s[tag=type10] run setblock ~ ~ ~ minecraft:carved_pumpkin[facing=west]
execute as @n[tag=kill] as @s[tag=type-10] run setblock ~ ~ ~ minecraft:carved_pumpkin[facing=east]
execute as @n[tag=kill] as @s[tag=type01] run setblock ~ ~ ~ minecraft:carved_pumpkin[facing=north]
execute as @n[tag=kill] as @s[tag=type0-1] run setblock ~ ~ ~ minecraft:carved_pumpkin[facing=south]

kill @e[tag=kill]