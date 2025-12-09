execute at @s[scores={svm_ep.using_move=1174}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:end_rod ~ ~ ~ 0 0 0 4 450
execute at @s[scores={svm_ep.using_move=..1174}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:end_rod ~ ~ ~ 0 0 0 2 15

execute at @s[scores={svm_ep.using_move=..1199}] run playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..30] ~ ~ ~ 0.6 0.8
execute at @s[scores={svm_ep.using_move=..1174}] run playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..30] ~ ~ ~ 0.6 0.5
execute at @s[scores={svm_ep.using_move=1173..1175}] run playsound minecraft:entity.generic.explode master @a[distance=..20] ~ ~ ~ 1 1.3

execute at @s[scores={svm_ep.using_move=1174}] run playsound minecraft:entity.lightning_bolt.thunder hostile @a[distance=..50] ~ ~1 ~ 4 1.6

execute at @s[scores={svm_ep.using_move=..1199}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.8 15
execute at @s[scores={svm_ep.using_move=..1174}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 1.2 25

execute at @s[scores={svm_ep.using_move=1194..1198}] run particle minecraft:dust_color_transition{from_color:[1f,1f,0f],to_color:[1.7f,0.0f,0.5f],scale:1f} ~ ~.7 ~ 0.8 0.8 0.8 0.4 4
execute at @s[scores={svm_ep.using_move=1155}] run function svm_ep:power/lightning/god_slash/prepare
execute at @s[scores={svm_ep.using_move=1157..1160}] run playsound minecraft:block.netherrack.break master @a[distance=..30] ~ ~ ~ 2 0

execute at @s[scores={svm_ep.using_move=1145}] run function svm_ep:power/lightning/god_slash/shoot
effect give @s minecraft:slowness 1 3 true
effect give @s minecraft:slow_falling 1 0 true