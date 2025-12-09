effect give @s minecraft:slow_falling 1 0 true
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 100 force @a

execute at @s run playsound minecraft:block.respawn_anchor.deplete master @a[distance=..70] ~ ~ ~ 1 0 1
execute at @s run playsound minecraft:block.respawn_anchor.charge master @a[distance=..70] ~ ~ ~ 1 0 1
execute at @s run playsound minecraft:block.portal.travel master @a[distance=..30] ~ ~ ~ 0.05 0
scoreboard players set @s svm_ep.shaking 20

effect give @s minecraft:speed 1 5 true
effect give @s minecraft:slowness 2 3 true
tag @s remove tped