effect give @s minecraft:wither 5 1
scoreboard players remove @n[tag=executor] svm_ep.p.copy_ability_20_count 1
execute at @n[tag=executor] run playsound minecraft:entity.wither_skeleton.ambient master @a[distance=..25] ~ ~ ~ 0.5 0.95 0.2