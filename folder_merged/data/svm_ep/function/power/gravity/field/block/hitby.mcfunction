tag @s remove hitby
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.1 0.1 0.1 0.25 21 force @a[distance=..75]
particle minecraft:campfire_signal_smoke ~ ~ ~ 0.1 0.1 0.1 0.35 21 force @a[distance=..75]
particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.5 70 force @a[distance=..75]
scoreboard players add @a[distance=..5] svm_ep.shaking 5
damage @s 4 minecraft:in_wall
playsound minecraft:entity.wither.break_block master @a[distance=..30] ~ ~ ~ 0.15 .4 0.05
summon marker ~ ~ ~ {Tags:["svm_ep.crack_erase","svm_ep.crack_2","svm_ep.crack"]}
scoreboard players set @n[tag=executor,type=#svm_ep:technical] svm_ep.lifetime 2250
execute as @s[tag=!executor] run return 0
tag @s remove executor
