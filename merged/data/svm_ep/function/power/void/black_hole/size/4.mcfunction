execute as @e[type=!#svm_ep:technical,distance=..11] at @s run function svm_ep:power/void/black_hole/hitby

particle minecraft:dust{color:[0f,0f,0f],scale:4f} ~ ~ ~ 1 1 1 0 10 force @a[distance=..150]
particle minecraft:dust{color:[0f,0f,0f],scale:4f} ~ ~ ~ 4 4 4 0 30 force @a[distance=..150]
particle minecraft:dust{color:[18000000f,18000000f,18000000f],scale:4f} ~ ~ ~ 8 8 8 0 4 force @a[distance=..150]

