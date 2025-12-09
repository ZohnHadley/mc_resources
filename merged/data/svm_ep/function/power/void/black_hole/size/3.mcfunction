execute as @e[type=!#svm_ep:technical,distance=..7] at @s run function svm_ep:power/void/black_hole/hitby

particle minecraft:dust{color:[0f,0f,0f],scale:3f} ~ ~ ~ 2 2 2 0 5 force @a[distance=..150]
particle minecraft:dust{color:[18000000f,18000000f,18000000f],scale:3f} ~ ~ ~ 4 4 4 0 2 force @a[distance=..150]
