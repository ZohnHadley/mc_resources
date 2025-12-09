tp @s ~ ~0.1 ~ facing entity @n[tag=executor] feet

execute at @s positioned ^ ^ ^-0.525 if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^0.075
execute at @s positioned ^ ^ ^-0.525 if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^0.075
execute at @s positioned ^ ^ ^-0.525 if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^0.075
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox align xyz run tp @s ~0.5 ~1 ~0.5
execute at @s if block ~ ~ ~ #svm_ep:no_physical_hitbox as @e[tag=repel] run tp @s ~ ~-0.1 ~
kill @s