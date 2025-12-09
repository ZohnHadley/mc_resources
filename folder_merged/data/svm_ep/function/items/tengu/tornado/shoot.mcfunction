scoreboard players add @s svm_ep.used_move 100
execute at @s run playsound minecraft:entity.player.attack.strong master @a[distance=..15] ~ ~1 ~ 2 0
execute at @s run playsound minecraft:entity.player.attack.crit master @a[distance=..15] ~ ~1 ~ 2 0
execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:crit ~ ~ ~ 0 0 0 2.5 100

tag @s add executor
execute at @s anchored feet positioned ^ ^ ^2 summon item_display run function svm_ep:items/tengu/tornado/spawn
tag @s remove executor
effect clear @s minecraft:slowness

