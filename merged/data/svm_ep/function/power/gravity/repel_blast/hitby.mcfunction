tag @s add repel
execute at @s summon marker run function svm_ep:power/gravity/repel_blast/tp
tag @s remove repel
execute at @s run particle minecraft:explosion ~ ~1 ~ 1 1 1 1 5
execute at @s run playsound minecraft:entity.generic.explode master @a[distance=..50] ~ ~ ~ 2 2
execute at @s run playsound minecraft:entity.generic.explode master @a[distance=..50] ~ ~ ~ 2 1
execute at @s run playsound minecraft:entity.generic.explode master @a[distance=..50] ~ ~ ~ 2 0
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 4 100
execute at @s run playsound minecraft:item.shield.block master @a[distance=..50] ~ ~ ~ 1 0
execute at @s run summon marker ~ ~ ~ {Tags:["svm_ep.crack_3","svm_ep.crack"]}
damage @s 6 minecraft:no_cooldown by @e[tag=executor,limit=1,sort=nearest]
tag @s remove hitby