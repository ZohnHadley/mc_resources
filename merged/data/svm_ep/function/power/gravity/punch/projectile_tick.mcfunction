scoreboard players add @s svm_ep.lifetime 1
tag @s add executor
execute as @a if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add immune


execute at @s[scores={svm_ep.p.gravity_punch=1}] run particle minecraft:dust{color:[0f,0.67f,0f],scale:1f} ~ ~0.7 ~ 0.15 0.15 0.15 3 15
execute at @s[scores={svm_ep.p.gravity_punch=1}] run particle minecraft:dust{color:[0.3f,18000000f,0.3f],scale:0.7f} ~ ~0.7 ~ 0.15 0.15 0.15 3 15
execute at @s[scores={svm_ep.p.gravity_punch=2}] run particle minecraft:dust{color:[0f,0f,0.67f],scale:1f} ~ ~0.7 ~ 0.15 0.15 0.15 3 15
execute at @s[scores={svm_ep.p.gravity_punch=2}] run particle minecraft:dust{color:[0.3f,0.3f,18000000f],scale:0.7f} ~ ~0.7 ~ 0.15 0.15 0.15 3 15
execute at @s[scores={svm_ep.p.gravity_punch=3}] run particle minecraft:dust{color:[0.67f,0f,0f],scale:1f} ~ ~0.7 ~ 0.15 0.15 0.15 3 15
execute at @s[scores={svm_ep.p.gravity_punch=3}] run particle minecraft:dust{color:[18000000f,0.3f,0.3f],scale:0.7f} ~ ~0.7 ~ 0.15 0.15 0.15 3 15
execute at @s[scores={svm_ep.p.gravity_punch=4}] run particle minecraft:dust{color:[0.67f,0f,0.67f],scale:1f} ~ ~0.7 ~ 0.15 0.15 0.15 3 15
execute at @s[scores={svm_ep.p.gravity_punch=4}] run particle minecraft:dust{color:[18000000f,0.3f,18000000f],scale:0.7f} ~ ~0.7 ~ 0.15 0.15 0.15 3 15
execute at @s run particle minecraft:dust{color:[0f,0f,0f],scale:1.7f} ~ ~0.7 ~ 0.52 0.52 0.52 3 9


execute as @s[scores={svm_ep.lifetime=..9}] at @s run function svm_ep:power/gravity/punch/move
tag @a remove immune
execute as @s[scores={svm_ep.lifetime=10..}] at @s run function svm_ep:power/gravity/punch/projectile_tick2

tag @s remove executor