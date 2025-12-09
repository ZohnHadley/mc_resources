tp @s @s
effect give @s minecraft:slowness 1 5 true
effect give @s minecraft:weakness 1 50 true
execute as @s[scores={svm_ep.using_move=..101179}] at @s run function svm_ep:non_power/forest_wolves/spawn