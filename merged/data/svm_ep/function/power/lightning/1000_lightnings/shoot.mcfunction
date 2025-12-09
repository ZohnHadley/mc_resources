execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 5 0

execute at @s anchored eyes run summon marker ~ ~ ~ {Tags:["new","svm_ep.1000_lightnings"]}
scoreboard players operation @e[tag=new] svm_ep.entity_id = @s svm_ep.entity_id
scoreboard players set @n[tag=new] svm_ep.projectile 10
scoreboard players set @n[tag=new] svm_ep.projectile_type 1
tp @e[tag=new] @s
execute at @s anchored eyes positioned ^ ^ ^0.6 run tp @e[tag=new] ~ ~ ~
execute at @s anchored eyes positioned ^ ^ ^0.6 run particle minecraft:end_rod ~ ~ ~ 0.06 0.06 0.06 0.55 430
tag @e remove new