scoreboard players add @s svm_ep.used_move 150
execute at @s run playsound minecraft:entity.player.attack.strong master @a[distance=..15] ~ ~1 ~ 2 0
execute at @s run playsound minecraft:entity.player.attack.crit master @a[distance=..15] ~ ~1 ~ 2 0
execute at @s anchored eyes positioned ^ ^ ^3 run particle minecraft:crit ~ ~ ~ 0 0 0 1.5 150
execute at @s anchored eyes positioned ^ ^ ^2 run particle minecraft:cloud ~ ~ ~ 0 0 0 2.5 150
playsound minecraft:entity.warden.sonic_boom master @a[distance=..25] ~ ~ ~ 0.7 2


tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^1 summon item_display run function svm_ep:items/tengu/blast/spawn
tag @s remove executor
effect clear @s minecraft:slowness

