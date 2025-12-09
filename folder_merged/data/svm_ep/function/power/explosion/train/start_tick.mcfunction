execute at @s[scores={svm_ep.using_move=601..700}] run particle minecraft:smoke ~ ~1 ~ 1 1 1 0.04 1
execute at @s[scores={svm_ep.using_move=601..690}] run particle minecraft:smoke ~ ~1 ~ 1 1 1 0.04 10
execute at @s[scores={svm_ep.using_move=601..680}] run particle minecraft:smoke ~ ~1 ~ 1 1 1 0.04 10
execute at @s[scores={svm_ep.using_move=601..670}] run particle minecraft:smoke ~ ~1 ~ 1 1 1 0.04 10
execute at @s[scores={svm_ep.using_move=601..660}] run particle minecraft:smoke ~ ~1 ~ 1 1 1 0.04 10
execute at @s[scores={svm_ep.using_move=601..650}] run particle minecraft:smoke ~ ~1 ~ 1 1 1 0.04 10
execute at @s[scores={svm_ep.using_move=601..640}] run particle minecraft:smoke ~ ~1 ~ 1 1 1 0.04 10
execute at @s[scores={svm_ep.using_move=601..630}] run particle minecraft:smoke ~ ~1 ~ 1 1 1 0.04 10
execute at @s[scores={svm_ep.using_move=601..620}] run particle minecraft:smoke ~ ~1 ~ 1 1 1 0.04 10
scoreboard players add @s svm_ep.p.explosion_ability_06_delay 1

execute at @s[scores={svm_ep.using_move=601..670}] run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.04 10
execute at @s[scores={svm_ep.using_move=640}] run function svm_ep:power/explosion/effect
execute at @s[scores={svm_ep.using_move=640..}] run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..15] ~ ~ ~ 1 0.4
execute at @s[scores={svm_ep.using_move=..640}] run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..15] ~ ~ ~ 1 1.25
execute at @s[scores={svm_ep.using_move=601..640}] run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 1 10

execute at @s[scores={svm_ep.using_move=630}] run function svm_ep:power/explosion/train/start