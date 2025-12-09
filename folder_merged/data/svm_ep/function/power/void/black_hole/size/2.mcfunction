execute as @e[type=!#svm_ep:technical,distance=..4] at @s run function svm_ep:power/void/black_hole/hitby

particle minecraft:dust{color:[0f,0f,0f],scale:2.5f} ~ ~ ~ 1 1 1 0 5 force @a[distance=..150]
particle minecraft:dust{color:[18000000f,18000000f,18000000f],scale:1f} ~ ~ ~ 2 2 2 0 1 force @a[distance=..150]
