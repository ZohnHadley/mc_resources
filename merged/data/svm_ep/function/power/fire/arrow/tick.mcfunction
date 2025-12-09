execute as @s[scores={svm_ep.using_move=..830}] at @s anchored eyes positioned ^ ^-.2 ^1 run function svm_ep:power/fire/arrow/shoot
scoreboard players reset @s[scores={svm_ep.using_move=..830}] svm_ep.using_move
tp @s[scores={svm_ep.using_move=..850}] @s
execute at @s anchored eyes positioned ^ ^-0.3 ^1 run function svm_ep:power/fire/particle
execute at @s[scores={svm_ep.using_move=..860}] anchored eyes positioned ^ ^-0.3 ^1 run particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 1.3 10
execute at @s run playsound minecraft:entity.blaze.burn master @a[distance=..50] ~ ~ ~ 1 2 1
execute at @s[scores={svm_ep.using_move=..860}] run playsound minecraft:entity.blaze.burn master @a[distance=..50] ~ ~ ~ 1 0 1
effect give @s[scores={svm_ep.using_move=..860}] slowness 1 5 true

execute at @s[scores={svm_ep.using_move=860}] run playsound minecraft:entity.blaze.ambient master @a[distance=..50] ~ ~ ~ 1 0 1
execute at @s run particle minecraft:flame ~ ~0.5 ~ 1 0.5 1 0.3 10
execute at @s[scores={svm_ep.using_move=860}] run particle minecraft:flame ~ ~0.5 ~ 1 0.5 1 1.3 110
