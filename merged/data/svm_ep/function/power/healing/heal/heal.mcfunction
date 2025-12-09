effect give @s minecraft:regeneration 7 0 true
effect give @s minecraft:saturation 1 0 true
effect give @s minecraft:instant_health 1 0 false


execute at @s run particle minecraft:heart ~ ~1 ~ 0.5 0.7 0.5 0.15 5
execute at @s run playsound minecraft:entity.evoker.cast_spell ambient @a[distance=..20] ~ ~ ~ 0.3 1.8
execute at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.15 23
execute at @s run playsound minecraft:block.netherrack.hit master @a[distance=..25] ~ ~1 ~ 1 0
