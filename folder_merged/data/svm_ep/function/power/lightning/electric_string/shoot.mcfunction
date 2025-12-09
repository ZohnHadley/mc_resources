execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 2 1.4
execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 2 2
effect clear @s slowness

execute at @s anchored eyes run summon marker ~ ~ ~ {Tags:["new","svm_ep.electric_string"]}
scoreboard players operation @e[tag=new] svm_ep.entity_id = @s svm_ep.entity_id
scoreboard players operation @e[tag=new] svm_ep.p.lightning_string_charge = @s svm_ep.p.lightning_string_charge
scoreboard players operation @e[tag=new] svm_ep.lifetime -= @s svm_ep.p.lightning_string_charge
execute at @s run playsound minecraft:entity.guardian.attack master @a[distance=..22] ~ ~ ~ 2 2
execute at @s run playsound minecraft:entity.guardian.attack master @a[distance=..22] ~ ~ ~ 2 1.5
execute at @s run playsound minecraft:entity.guardian.attack master @a[distance=..22] ~ ~ ~ 2 1
execute at @s run playsound minecraft:entity.guardian.attack master @a[distance=..22] ~ ~ ~ 2 0.5
execute at @s run playsound minecraft:entity.guardian.attack master @a[distance=..22] ~ ~ ~ 2 2
execute at @s run playsound minecraft:entity.guardian.attack master @a[distance=..22] ~ ~ ~ 2 1.5
execute at @s run playsound minecraft:entity.guardian.attack master @a[distance=..22] ~ ~ ~ 2 1
execute at @s run playsound minecraft:entity.guardian.attack master @a[distance=..22] ~ ~ ~ 2 0.5

scoreboard players set @n[tag=new] svm_ep.projectile 10
scoreboard players set @n[tag=new] svm_ep.projectile_type 1
tp @e[tag=new] @s
execute as @e[tag=new] at @s run tp @s ~ ~ ~ facing entity @e[tag=target,limit=1]
execute at @s anchored eyes positioned ^ ^ ^0.6 run tp @e[tag=new] ~ ~ ~
execute at @s anchored eyes positioned ^ ^ ^0.6 run particle minecraft:end_rod ~ ~ ~ 0.06 0.06 0.06 1.55 130
execute on target at @e[tag=new] run tp @e[tag=new] ~ ~ ~ facing entity @s eyes
scoreboard players reset @s svm_ep.using_move
scoreboard players reset @s svm_ep.p.lightning_string_charge