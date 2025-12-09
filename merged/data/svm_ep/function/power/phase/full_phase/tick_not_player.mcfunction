tag @s add executor


effect give @s minecraft:weakness 1 255 true
effect give @s minecraft:resistance 1 255 true
effect give @s minecraft:speed 1 4 true
effect give @s minecraft:invisibility 1 4 true

execute as @s[scores={svm_ep.using_move=1202}] run function svm_ep:power/phase/full_phase/end_not_player


tag @s remove executor
