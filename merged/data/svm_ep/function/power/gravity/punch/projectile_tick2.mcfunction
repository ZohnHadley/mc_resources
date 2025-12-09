tag @s add executor
execute as @a if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add immune

execute as @s[tag=!after_first] run function svm_ep:power/gravity/punch/boom

execute at @s[scores={svm_ep.p.gravity_punch=1}] run particle minecraft:dust{color:[0f,0.47f,0f],scale:2f} ~ ~0.7 ~ 1.35 1.35 1.35 3 6
execute at @s[scores={svm_ep.p.gravity_punch=1}] run particle minecraft:dust{color:[0.3f,18000000f,0.3f],scale:3f} ~ ~0.7 ~ 0.75 0.75 0.75 3 1

execute at @s[scores={svm_ep.p.gravity_punch=2}] run particle minecraft:dust{color:[0f,0f,0.47f],scale:2f} ~ ~0.7 ~ 1.35 1.35 1.35 3 6
execute at @s[scores={svm_ep.p.gravity_punch=2}] run particle minecraft:dust{color:[0.3f,0.3f,18000000f],scale:3f} ~ ~0.7 ~ 0.75 0.75 0.75 3 1

execute at @s[scores={svm_ep.p.gravity_punch=3}] run particle minecraft:dust{color:[0.47f,0f,0f],scale:2f} ~ ~0.7 ~ 1.35 1.35 1.35 3 6
execute at @s[scores={svm_ep.p.gravity_punch=3}] run particle minecraft:dust{color:[18000000f,0.3f,0.3f],scale:3f} ~ ~0.7 ~ 0.75 0.75 0.75 3 1

execute at @s[scores={svm_ep.p.gravity_punch=4}] run particle minecraft:dust{color:[0.47f,0f,0.47f],scale:2f} ~ ~0.7 ~ 1.35 1.35 1.35 3 6
execute at @s[scores={svm_ep.p.gravity_punch=4}] run particle minecraft:dust{color:[18000000f,0.3f,18000000f],scale:3f} ~ ~0.7 ~ 0.75 0.75 0.75 3 1

execute at @s run particle minecraft:dust{color:[0f,0f,0f],scale:1f} ~ ~0.7 ~ 2.52 2.52 2.52 3 7
execute at @s run particle minecraft:dust{color:[0f,0f,0f],scale:1.5f} ~ ~0.7 ~ 1.52 1.52 1.52 3 4


execute at @s as @e[tag=!immune,dx=3.5,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[tag=!immune,distance=..4,type=!#svm_ep:technical] run tag @s add hitby
execute at @s[scores={svm_ep.p.gravity_punch=1}] as @e[tag=!immune,distance=..6,type=!#svm_ep:technical] run tag @s add hitby
execute at @s run summon marker ~ ~ ~ {Tags:["svm_ep.crack_3","svm_ep.crack"]}
execute as @e[tag=hitby] at @s run function svm_ep:power/gravity/punch/hitby2
scoreboard players add @a[distance=..15] svm_ep.shaking 1
tag @a remove immune
kill @s[scores={svm_ep.lifetime=17..}]