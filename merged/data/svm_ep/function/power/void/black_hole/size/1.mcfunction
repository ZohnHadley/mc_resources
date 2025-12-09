execute as @e[type=!#svm_ep:technical,distance=..2] at @s run function svm_ep:power/void/black_hole/hitby
#execute as @s[scores={svm_ep.lifetime=20}] run data merge entity @s {transformation:{scale:[30f,30f,30f]},interpolation_duration:100,start_interpolation:-1}

particle minecraft:dust{color:[0f,0f,0f],scale:2f} ~ ~ ~ 0.5 0.5 0.5 0 5 force @a[distance=..150]
particle minecraft:dust{color:[18000000f,18000000f,18000000f],scale:1f} ~ ~ ~ 1 1 1 0 1 force @a[distance=..150]
