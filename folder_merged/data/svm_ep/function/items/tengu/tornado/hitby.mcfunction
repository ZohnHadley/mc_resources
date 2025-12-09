effect give @s minecraft:levitation 1 11 true
effect give @s minecraft:slowness 4 1 true
scoreboard players set @s svm_ep.clear_levitation 5
execute at @s run particle minecraft:cloud ~ ~0.25 ~ 0.25 0.25 0.25 0.2 5
playsound minecraft:entity.horse.breathe master @a[distance=..25] ~ ~ ~ 2 0 0.5