execute at @s run tp @s ^ ^ ^0.55 ~ ~
execute at @s run particle dust{color:[1f,0f,0f],scale:1.15f} ~ ~ ~ 3 3 3 0 5
execute at @s run particle dust{color:[1f,0.1f,0f],scale:1.35f} ~ ~ ~ 2 2 2 0 5
execute at @s run particle dust{color:[18000000f,0.25f,0f],scale:1.75f} ~ ~ ~ 1 1 1 0 5
execute at @s run particle dust{color:[18000000f,0.95f,0f],scale:2.25f} ~ ~ ~ 0.2 0.2 0.2 0 2



execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 2.6 10
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 1.5 10
execute at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 1.8 10
execute at @s if entity @e[tag=!same_id,dx=0,type=!#svm_ep:technical] run tag @s add hit
execute at @s if entity @e[tag=!same_id,distance=..1.5,type=!#svm_ep:technical] run tag @s add hit
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add hit