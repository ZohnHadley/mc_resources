execute at @s as @e[type=!#svm_ep:technical,distance=..35] run scoreboard players set @s svm_ep.effect 1
execute at @s as @e[type=!#svm_ep:technical,distance=..35] run scoreboard players set @s svm_ep.e.weight_neutralizer 5
execute at @s run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 17.5 17.5 17.5 0.001 100 force @a[distance=..75]
scoreboard players add @s svm_ep.mana_drain 25
