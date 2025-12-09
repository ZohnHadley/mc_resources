damage @s 26 svm_ep:bypass_cooldown by @e[tag=same_id,limit=1]
effect give @s minecraft:slowness 9 4 true
execute at @s run particle minecraft:end_rod ~ ~0.7 ~ 0.3 0.7 0.3 2 50
execute at @s run playsound minecraft:entity.guardian.attack ambient @a[distance=..12] ~ ~ ~ 2 1.8