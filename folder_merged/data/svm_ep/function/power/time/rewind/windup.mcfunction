effect give @s minecraft:slowness 1 6 true

execute at @s run effect give @a[distance=..100] minecraft:darkness 2 0 true
execute as @s[scores={svm_ep.using_move=..502}] run function svm_ep:power/time/rewind/rewind
