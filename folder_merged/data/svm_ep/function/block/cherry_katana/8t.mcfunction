execute at @s unless entity @p[distance=..75] run return 0
execute store result score guardians_in_range svm_ep.numbers if entity @e[tag=svm_ep.npc_cherry_guardian,distance=..250]
execute store result score guardians_total svm_ep.numbers if entity @e[tag=svm_ep.npc_cherry_guardian]
execute if score guardians_in_range svm_ep.numbers matches 5.. run return 0
execute if score guardians_total svm_ep.numbers matches 20.. run return 0
execute if predicate svm_ep:chance/80_percent run return 0
execute at @s as @r[distance=..40] at @s run function svm_ep:block/cherry_katana/spawn_cherry_guards

execute at @s run particle minecraft:cherry_leaves ~ ~1.5 ~ 1 0.1 1 1 100
execute at @s run particle minecraft:cloud ~ ~1.5 ~ 0.1 0.1 0.1 0.2 10
execute at @s run playsound minecraft:block.bell.resonate master @a ~ ~ ~ 1 2

scoreboard players remove @s svm_ep.lifetime 1
execute as @s[scores={svm_ep.lifetime=-49..}] run return 0
summon tnt ~ ~ ~ {fuse:0s}
kill @s