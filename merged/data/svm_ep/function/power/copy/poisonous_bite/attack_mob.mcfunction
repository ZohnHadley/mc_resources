

tag @s add executor


execute at @s as @e[tag=!executor,distance=..8] at @s on attacker if entity @s[tag=executor] as @n as @s[nbt={HurtTime:10s}] run effect give @s minecraft:poison 6 2
tag @s remove executor
scoreboard players reset @s svm_ep.using_move

playsound minecraft:entity.spider.ambient master @a[distance=..25] ~ ~ ~ 1 0.95 0.2