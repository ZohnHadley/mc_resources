tp @s ^ ^ ^0.65

particle minecraft:dust{color:[1f,0.75f,1f],scale:2.8f} ~ ~ ~ 1 1 1 0 5
particle minecraft:dust{color:[1f,0.5f,1f],scale:2.3f} ~ ~ ~ 2 2 2 0 5
particle minecraft:dust{color:[1f,0.25f,1f],scale:1.5f} ~ ~ ~ 2.5 2.5 2.5 0 8
particle minecraft:dust{color:[0.5f,0f,0.5f],scale:1.5f} ~ ~ ~ 3 3 3 0 4
particle minecraft:dust{color:[0.15f,0f,0.15f],scale:1.5f} ~ ~ ~ 3.3 3.3 3.3 0 5


tag @e[tag=!same_id,distance=..5,type=!#svm_ep:technical] add hitby
tag @e[tag=!same_id,dx=0,type=!#svm_ep:technical] add hitby
particle minecraft:end_rod ~ ~ ~ 0.06 0.06 0.06 0.4 6
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.6 10