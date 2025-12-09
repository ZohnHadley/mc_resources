execute at @s positioned ^ ^ ^0.45 run tp @s ~ ~ ~ ~ ~0.35
execute at @s run particle minecraft:flame ~ ~1 ~ 0 0 0 0.62 1
execute at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.62 2

execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run kill @s
execute on passengers run scoreboard players add @s svm_ep.p.explosion_ability_04_delay 1
execute on passengers run effect give @s minecraft:slow_falling 1 0 true