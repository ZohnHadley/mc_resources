tag @s add executor


effect give @s[scores={svm_ep.using_move=1110}] slow_falling 1 0 true
effect give @s[scores={svm_ep.using_move=1118}] slowness 2 2 true
effect give @s[scores={svm_ep.using_move=1112}] resistance 1 4 true
effect clear @s[scores={svm_ep.using_move=1113}] levitation
execute at @s[scores={svm_ep.using_move=1112}] run particle minecraft:cloud ~ ~0.2 ~ 0.4 0 0.4 0.25 150
execute at @s[scores={svm_ep.using_move=1112}] run playsound minecraft:entity.evoker.cast_spell ambient @a[distance=..20] ~ ~ ~ 3.7 2

execute at @s[scores={svm_ep.using_move=1099..1106}] run function svm_ep:power/phase/ground_smash/fly

execute at @s[scores={svm_ep.using_move=1113..1120}] run summon minecraft:area_effect_cloud ~ ~0.4 ~ {Tags:["svm_ep.phase_dash"],Duration:6}

execute at @s as @s[scores={svm_ep.using_move=1090..1097}] run function svm_ep:power/phase/ground_smash/smash
#tellraw @a ["",{"text":"XD ","color":"#858585"},{"score":{"name":"@s","objective":"svm_ep.using_move"},"color":"#858585"}]
tag @s remove executor
