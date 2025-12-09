tp @s @s

particle minecraft:raid_omen ~ ~1 ~ 1 1 1 0.02 5
particle minecraft:smoke ~ ~1 ~ 0.4 0.7 0.4 0.3 5
particle minecraft:dust{color:[0.2f,0.1f,0.1f],scale:3} ~ ~0.1 ~ 0.8 .3 0.8 0.3 5
particle minecraft:dust{color:[0.1f,0.05f,0.05f],scale:3} ~ ~0.8 ~ 0.8 1.3 0.8 0.3 5


execute as @s[scores={svm_ep.using_move=342}] run return run function svm_ep:power/death/unsealed_reaper/start
execute as @s[scores={svm_ep.using_move=..358}] run return 0

effect give @a[distance=..125] minecraft:darkness 2 3 true
effect give @s minecraft:slowness 1 6 true
effect give @s minecraft:weakness 1 6 true



#END
