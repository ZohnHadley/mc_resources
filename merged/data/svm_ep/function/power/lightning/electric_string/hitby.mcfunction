damage @s 1.5 svm_ep:bypass_cooldown by @e[tag=same_id,limit=1]
effect give @s minecraft:slowness 3 3 true
execute at @s run particle minecraft:end_rod ~ ~0.7 ~ 0.3 0.7 0.3 0.85 10
execute at @s run playsound minecraft:entity.guardian.attack ambient @a[distance=..12] ~ ~ ~ 1 1.8