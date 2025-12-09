scoreboard players reset @s svm_ep.using_move
scoreboard players set @a[distance=..15] svm_ep.shaking 0
effect clear @s slowness
playsound minecraft:entity.warden.sonic_boom master @a[distance=..125] ~ ~ ~ 1 0
effect give @s minecraft:blindness 1 0 true
effect give @s slowness 1 3 true
