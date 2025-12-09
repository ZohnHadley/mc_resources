tag @s remove hitby
damage @s 5 svm_ep:no_cooldown by @n[tag=same_id]
effect give @s minecraft:slowness 3 4 true
execute at @s run particle minecraft:end_rod ~ ~0.7 ~ 0.3 0.7 0.3 0.35 30
execute at @s run playsound minecraft:entity.guardian.attack ambient @a[distance=..12] ~ ~ ~ 2 1.8