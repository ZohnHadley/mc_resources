tp @s ~ ~-0.1 ~ facing entity @e[tag=executor,limit=1] feet

execute at @s positioned ^ ^ ^0.525 if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^-0.075
execute at @s positioned ^ ^ ^0.525 if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^-0.075
execute at @s positioned ^ ^ ^0.525 if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^-0.075
execute at @s as @n[tag=repel] run tp @s ~ ~ ~
kill @s