data modify entity @s Rotation set from entity @n[tag=executor] Rotation
execute at @s positioned ^ ^ ^0.27 if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^-0.05
execute at @s as @e[tag=repel] run tp @s ~ ~ ~
kill @s