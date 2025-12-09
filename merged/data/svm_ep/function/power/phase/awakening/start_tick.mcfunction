execute at @s run particle minecraft:cloud ~ ~1 ~ 0.75 3 0.75 0.04 75
execute as @s[scores={svm_ep.using_move=710..800}] at @s run particle minecraft:cloud ~ ~1 ~ 0.65 0.65 0.65 0.04 175
execute as @s[scores={svm_ep.using_move=710..780}] at @s run particle minecraft:cloud ~ ~1 ~ 0.75 3 0.75 0.04 125
execute as @s[scores={svm_ep.using_move=720..760}] at @s run particle minecraft:cloud ~ ~1 ~ 0.75 3 0.75 0.04 175
execute as @s[scores={svm_ep.using_move=720..740}] at @s run particle minecraft:cloud ~ ~1 ~ 0.75 3 0.75 0.04 125
execute as @s[scores={svm_ep.using_move=740..740}] at @s run particle minecraft:cloud ~ ~1 ~ 0.75 3 0.75 0.04 100

execute at @s[scores={svm_ep.using_move=780..800}] run playsound minecraft:item.trident.riptide_1 ambient @a[distance=..40] ~ ~1 ~ 0.4 1
execute at @s[scores={svm_ep.using_move=760..780}] run playsound minecraft:item.trident.riptide_1 ambient @a[distance=..40] ~ ~1 ~ 0.5 0.9
execute at @s[scores={svm_ep.using_move=740..760}] run playsound minecraft:item.trident.riptide_1 ambient @a[distance=..40] ~ ~1 ~ 0.8 0.8
execute at @s[scores={svm_ep.using_move=720..740}] run playsound minecraft:item.trident.riptide_1 ambient @a[distance=..40] ~ ~1 ~ 1.3 0.65
execute at @s[scores={svm_ep.using_move=700}] run playsound minecraft:item.trident.thunder ambient @a[distance=..40] ~ ~ ~ 2 0.3
execute at @s[scores={svm_ep.using_move=700}] run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.45 1500

tag @s add executor
execute at @s[scores={svm_ep.using_move=700}] as @e[distance=..15,tag=!executor,type=!#svm_ep:technical] run damage @s 6 minecraft:player_attack by @e[tag=executor,limit=1,sort=nearest]
tag @s remove executor

execute at @s[scores={svm_ep.using_move=700}] run summon minecraft:lightning_bolt ~ ~6 ~



effect give @s[scores={svm_ep.using_move=701..}] minecraft:slowness 1 6 true
effect give @s minecraft:resistance 1 6 true
effect give @s[scores={svm_ep.using_move=700}] minecraft:speed 1 6 true
effect clear @s[scores={svm_ep.using_move=700}] minecraft:slowness