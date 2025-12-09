tp @s ~ ~ ~ facing entity @e[tag=executor,limit=1] feet
effect give @p[distance=..1] minecraft:slow_falling 1 0 true

execute at @s positioned ^ ^ ^0.45 if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @e[tag=repel] ^ ^ ^-0.15
kill @s