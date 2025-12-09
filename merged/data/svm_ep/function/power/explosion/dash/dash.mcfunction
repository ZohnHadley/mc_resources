scoreboard players reset @s svm_ep.using_move
effect clear @s slowness

effect give @s minecraft:strength 1 1 true
effect give @s minecraft:speed 1 2 true
effect give @s minecraft:haste 1 2 true

execute at @s anchored feet positioned ^ ^ ^0.35 positioned ~ ~0.5 ~ run function svm_ep:power/explosion/dash/raycast
execute at @s anchored eyes positioned ^ ^-0.15 ^-0.35 run function svm_ep:power/explosion/effect
execute at @s run scoreboard players add @a[distance=..10] svm_ep.shaking 6