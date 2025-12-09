tp @s ~ ~ ~ facing entity @e[tag=executor,limit=1] feet

execute at @s positioned ^ ^ ^0.325 if entity @e[tag=executor] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^0.325 if entity @e[tag=executor,distance=..15] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^0.325 if entity @e[tag=executor,distance=..10] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^0.275 if entity @e[tag=executor,distance=..5] run tp @s ^ ^ ^
effect give @p[distance=..4,tag=svm_ep.gravity_user] minecraft:slow_falling 1 0 true
execute at @s as @e[tag=repel,distance=..30] run tp @s ~ ~ ~
kill @s