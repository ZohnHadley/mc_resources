tag @s remove hitby
effect give @s minecraft:slowness 3 4 true
damage @s 3 minecraft:freeze by @n[tag=same_id]


execute at @n[tag=executor] rotated as @n[tag=executor] positioned ^ ^ ^1.7 positioned ~ ~0.4 ~ if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ~ ~ ~