tp @s ~ ~ ~ facing entity @e[tag=executor,limit=1] feet
effect give @p[distance=..1] minecraft:slow_falling 1 0 true

execute at @s positioned ^ ^ ^-0.525 run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^-0.525 if entity @e[tag=executor,distance=..14.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^-0.525 if entity @e[tag=executor,distance=..14.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^-0.525 if entity @e[tag=executor,distance=..14.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s run particle minecraft:poof ~ ~ ~ 0 0 0 1 15
execute at @s positioned ^ ^ ^-0.525 if entity @e[tag=executor,distance=..14.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^-0.525 if entity @e[tag=executor,distance=..14.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^-0.525 if entity @e[tag=executor,distance=..14.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s run particle minecraft:poof ~ ~ ~ 0 0 0 1 15
execute at @s positioned ^ ^ ^-0.525 if entity @e[tag=executor,distance=..14.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^-0.525 if entity @e[tag=executor,distance=..24.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^-0.525 if entity @e[tag=executor,distance=..24.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^-0.525 if entity @e[tag=executor,distance=..24.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^-0.525 if entity @e[tag=executor,distance=..24.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s run particle minecraft:poof ~ ~ ~ 0 0 0 1 15
execute at @s positioned ^ ^ ^-0.525 if entity @e[tag=executor,distance=..24.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^-0.525 if entity @e[tag=executor,distance=..24.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^-0.525 if entity @e[tag=executor,distance=..24.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^-0.525 if entity @e[tag=executor,distance=..24.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^-0.525 if entity @e[tag=executor,distance=..24.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s run particle minecraft:poof ~ ~ ~ 0 0 0 1 15
execute at @s positioned ^ ^ ^-0.525 if entity @e[tag=executor,distance=..24.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s as @e[tag=repel,distance=..18] run tp @s ~ ~ ~
kill @s