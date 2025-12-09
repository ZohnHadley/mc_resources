execute at @s run tp @s ^ ^ ^0.65
execute at @s run particle minecraft:dust{color:[18000000f,18000000f,18000000f],scale:2.2f} ~ ~ ~ 0.5 0.5 0.5 0 10
execute at @s run particle minecraft:dust{color:[1f,18000000f,18000000f],scale:2.1f} ~ ~ ~ 1 1 1 0 5
execute at @s run particle minecraft:dust{color:[0f,1f,18000000f],scale:2f} ~ ~ ~ 2 2 2 0 5
execute at @s run particle minecraft:dust{color:[0f,0.5f,18000000f],scale:1.9f} ~ ~ ~ 2.5 2.5 2.5 0 10
execute at @s run particle minecraft:dust{color:[18000000f,1f,0f],scale:1.8f} ~ ~ ~ 3 3 3 0 15


execute at @s as @e[tag=!same_id,distance=..5,type=!#svm_ep:technical] run function svm_ep:power/lightning/blast/hitby
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.06 0.06 0.06 0.4 6
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.6 10