kill @n[tag=svm_ep.launched_ice]
execute at @s anchored eyes positioned ^ ^ ^1.2 run particle minecraft:item{item:ice} ~ ~ ~ 0.3 0.3 0.3 0.4 80
execute at @s anchored eyes positioned ^ ^ ^1.2 run playsound minecraft:block.glass.break master @a[distance=..25] ~ ~ ~ 1.4 0
execute at @s anchored eyes positioned ^ ^ ^1.2 run playsound minecraft:block.glass.break master @a[distance=..25] ~ ~ ~ 1.4 0.7
execute at @s anchored eyes positioned ^ ^ ^1.2 run playsound minecraft:block.glass.break master @a[distance=..25] ~ ~ ~ 1.4 1.4
execute at @s anchored eyes positioned ^ ^ ^1.2 run particle gust
execute at @s anchored eyes positioned ^ ^ ^1.2 run playsound minecraft:entity.breeze.inhale master @a[distance=..35] ~ ~ ~ 1 1.1
scoreboard players remove @s svm_ep.mana 50