execute unless block ^ ^ ^0.5 #svm_ep:no_physical_hitbox run tag @s add end_raycast
execute unless entity @s[distance=..9] run tag @s[scores={svm_ep.using_move=..100}] add end_raycast
execute unless entity @s[distance=..11] run tag @s[scores={svm_ep.using_move=101..}] add end_raycast
particle minecraft:glow_squid_ink ~ ~0.7 ~ 0.7 0.7 0.7 2 60
particle minecraft:dust{color:[0f,0.93f,1f],scale:2.2f} ~ ~ ~ 0.6 0.6 0.6 0 90
particle minecraft:dust{color:[1f,0.89f,0.18f],scale:3f} ~ ~ ~ 1 1 1 0 12

particle glow ~ ~ ~ 1 1 1 0.3 5
particle end_rod ~ ~ ~ 1 1 1 0.3 6
particle end_rod ~ ~ ~ 1 1 1 1.5 7
execute as @e[tag=!executor,distance=..6,type=!#svm_ep:technical,tag=!hitby_tick] at @s[tag=!executor] run function svm_ep:power/lightning/dash/hitby

tp @s[tag=end_raycast] ~ ~ ~
execute as @s[tag=!end_raycast] positioned ^ ^ ^0.5 run function svm_ep:power/lightning/dash/raycast
