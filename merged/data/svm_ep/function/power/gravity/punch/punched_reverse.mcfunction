scoreboard players remove @s svm_ep.p.gravity_punched_reverse 1
scoreboard players add @s svm_ep.shaking 1
effect give @s slowness 1 2 true
effect give @s weakness 1 2 true
effect give @s minecraft:levitation 1 17 true
effect clear @s[scores={svm_ep.p.gravity_punched_reverse=0}] minecraft:levitation
execute as @s[scores={svm_ep.p.gravity_punched_reverse=0}] at @s anchored eyes run summon marker ~ ~ ~ {Tags:["svm_ep.crack_3","svm_ep.crack"]}
execute at @s run particle minecraft:enchant ~ ~1 ~ 0 0 0 3 100