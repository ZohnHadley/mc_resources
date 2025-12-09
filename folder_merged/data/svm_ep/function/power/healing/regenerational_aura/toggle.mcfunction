scoreboard players reset @s svm_ep.using_move
scoreboard players set @s svm_ep.p.healing_aura 300
execute positioned ~ ~0.1 ~ run function svm_ep:power/healing/regenerational_aura/ring_more_points
execute as @e[type=!#svm_ep:technical,distance=..5.5] run function svm_ep:power/healing/regenerational_aura/give_effect_base
execute at @s run playsound minecraft:entity.evoker.cast_spell ambient @a[distance=..20] ~ ~ ~ 0.2 1
execute at @s run playsound minecraft:block.beacon.power_select ambient @a[distance=..20] ~ ~ ~ .4 0