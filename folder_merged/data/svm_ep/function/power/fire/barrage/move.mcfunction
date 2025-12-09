tp @s ^ ^ ^0.75 ~ ~0.03
particle dust{color:[1f,0f,0f],scale:0.15f} ~ ~ ~ 0.65 0.65 0.65 0 1
particle dust{color:[1f,0.1f,0f],scale:0.25f} ~ ~ ~ 0.45 0.45 0.45 0 2
particle dust{color:[18000000f,0.25f,0f],scale:0.75f} ~ ~ ~ 0.25 0.25 0.25 0 1
particle dust{color:[18000000f,0.95f,0f],scale:1.25f} ~ ~ ~ 0.05 0.05 0.05 0 1



particle minecraft:flame ~ ~ ~ 0 0 0 1.6 1
particle minecraft:flame ~ ~ ~ 0 0 0 0.5 1
particle minecraft:smoke ~ ~ ~ 0 0 0 0.8 1
execute as @e[tag=!same_id,dx=0,type=!#svm_ep:technical] run function svm_ep:power/fire/barrage/hitby
execute as @e[tag=!same_id,distance=..1.5,type=!#svm_ep:technical] run function svm_ep:power/fire/barrage/hitby

execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add hit
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add hit