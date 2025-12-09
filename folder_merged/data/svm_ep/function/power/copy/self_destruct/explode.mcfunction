scoreboard players reset @s svm_ep.using_move
particle minecraft:explosion_emitter ~ ~1 ~
particle minecraft:campfire_signal_smoke ~ ~1 ~ 0 0 0 0.3 39
particle minecraft:smoke ~ ~1 ~ 0 0 0 0.4 19

execute as @e[distance=0.01..1] run damage @s 30 minecraft:explosion
execute as @e[distance=0.01..2] run damage @s 22 minecraft:explosion
execute as @e[distance=0.01..3] run damage @s 15 minecraft:explosion
execute as @e[distance=0.01..4] run damage @s 10 minecraft:explosion
execute as @e[distance=0.01..5] run damage @s 4 minecraft:explosion

playsound minecraft:entity.generic.explode master @a[distance=..35] ~ ~ ~ 1.2 0.92

summon marker ~ ~1 ~ {Tags:["svm_ep.crack_3","svm_ep.crack"]}

damage @s 8 svm_ep:exact
damage @s 10 minecraft:explosion
