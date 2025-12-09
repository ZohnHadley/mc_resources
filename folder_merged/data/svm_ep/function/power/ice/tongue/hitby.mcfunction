tag @s remove hitby
effect give @s minecraft:slowness 5 4 true
execute at @n[tag=executor] positioned ^ ^0.3 ^0.3 positioned ~ ~0.3 ~ if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ~ ~ ~