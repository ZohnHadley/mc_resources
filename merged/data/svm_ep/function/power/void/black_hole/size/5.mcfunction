execute as @e[type=!#svm_ep:technical,distance=..14] at @s run function svm_ep:power/void/black_hole/hitby

particle minecraft:dust{color:[0f,0f,0f],scale:4f} ~ ~ ~ 1 1 1 0 10 force @a[distance=..150]
particle minecraft:dust{color:[0f,0f,0f],scale:4f} ~ ~ ~ 6 6 6 0 20 force @a[distance=..150]
particle minecraft:dust{color:[18000000f,18000000f,18000000f],scale:4f} ~ ~ ~ 16 16 16 0 10 force @a[distance=..150]