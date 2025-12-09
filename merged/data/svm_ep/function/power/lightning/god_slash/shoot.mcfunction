execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 2 2
execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 2 1.5
execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 2 1
execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 2 0.5
execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 2 0
effect clear @s slowness

execute at @s anchored eyes run summon marker ~ ~ ~ {Tags:["new","svm_ep.lightning_god_slash"]}
scoreboard players operation @e[tag=new] svm_ep.entity_id = @s svm_ep.entity_id
scoreboard players set @e[tag=new] svm_ep.projectile 1
tp @e[tag=new] @s
execute as @e[tag=new] at @s run tp @s ~ ~ ~ facing entity @e[tag=target,limit=1]
execute at @s anchored eyes positioned ^ ^ ^0.85 run tp @e[tag=new] ~ ~ ~
execute at @s anchored eyes positioned ^ ^ ^0.85 run particle minecraft:end_rod ~ ~ ~ 0.06 0.06 0.06 0.55 430
execute at @s anchored eyes positioned ^ ^ ^1.75 run particle minecraft:dust{color:[0f,18000000f,0.9f],scale:1.75f} ~ ~ ~ 2 2 2 0 100
execute on target at @e[tag=new] run tp @e[tag=new] ~ ~ ~ facing entity @s eyes
scoreboard players reset @s svm_ep.using_move
