scoreboard players remove @s svm_ep.p.gravity_punched_normal 1
scoreboard players add @s svm_ep.shaking 1
effect give @s slowness 1 2 true
effect give @s weakness 1 2 true
execute at @s positioned ~ ~-0.015 ~ unless block ~ ~ ~ #svm_ep:indestructable run tp @s ~ ~ ~
execute as @s[scores={svm_ep.p.gravity_punched_normal=0}] at @s run summon marker ~ ~ ~ {Tags:["svm_ep.crack_3","svm_ep.crack"]}
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 3 10