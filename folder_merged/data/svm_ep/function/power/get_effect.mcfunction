execute at @s run playsound minecraft:entity.elder_guardian.curse master @a[distance=..30] ~ ~ ~ 1 1.2
execute at @s run particle minecraft:sonic_boom ~ ~0.8 ~
execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~0.8 ~
execute at @s run particle minecraft:end_rod ~ ~0.8 ~ 0 0 0 1 250
effect give @s minecraft:blindness 1 0 true
advancement grant @s only svm_ep:storyline/get_power