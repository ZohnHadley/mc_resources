execute at @s run particle minecraft:explosion ~ ~1 ~ 1 1 1 1 1
execute at @s run playsound minecraft:entity.generic.explode master @a[distance=..50] ~ ~ ~ 2 2
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 4 3
execute at @s run playsound minecraft:item.shield.block master @a[distance=..50] ~ ~ ~ 1 0
execute at @s run summon marker ~ ~ ~ {Tags:["svm_ep.crack_2","svm_ep.crack"]}
execute at @s run tp @s ~ ~-0.5 ~ 
damage @s 2.5 minecraft:no_cooldown by @e[tag=executor,limit=1,sort=nearest]
tag @s remove hitby
scoreboard players add @e[tag=executor] svm_ep.lifetime 3