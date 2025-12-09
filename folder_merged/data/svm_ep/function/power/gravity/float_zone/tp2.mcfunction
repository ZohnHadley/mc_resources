tp @s ~ ~ ~ facing entity @e[tag=executor,limit=1] feet
effect give @p[distance=..1] minecraft:slow_falling 1 0 true

execute at @s positioned ^ ^ ^0.1125 if entity @e[tag=executor,distance=..4.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^0.125 if entity @e[tag=executor,distance=..6] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^0.0675 if entity @e[tag=executor,distance=..12] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^0.0875 if entity @e[tag=executor,distance=..17] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^0.0625 if entity @e[tag=executor,distance=..30] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^0.0125 if entity @e[tag=executor,distance=..30] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s as @e[tag=repel,distance=..28] run tp @s ~ ~ ~
kill @s