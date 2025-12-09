scoreboard players set @s svm_ep.using_move 1223


scoreboard players add @s svm_ep.used_move 50
scoreboard players set @s[scores={svm_ep.used_move=..200}] svm_ep.used_move 200


scoreboard players set @s svm_ep.p.phase_ability_10_delay 100

execute at @s run playsound minecraft:entity.blaze.shoot ambient @a[distance=..10] ~ ~ ~ 1 0.7
execute at @s run playsound minecraft:entity.evoker.cast_spell ambient @a[distance=..10] ~ ~ ~ 1.7 0
execute at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.35 20