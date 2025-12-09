execute at @s run tp @s ^ ^ ^0.54 ~ ~
execute at @s run particle dust{color:[0.05f,0.02f,0.02f],scale:0.85f} ~ ~ ~ 0.05 0.05 0.05 0 1
execute at @s run particle dust{color:[0.2f,0.2f,0.2f],scale:0.85f} ~ ~ ~ 0.15 0.15 0.15 0 1
execute at @s run particle dust{color:[0.05f,0f,0f],scale:0.85f} ~ ~ ~ 0.25 0.25 0.25 0 1
execute at @s run particle minecraft:dust{color:[18000000f,0.99f,0f],scale:1.15f} ~ ~ ~ 0 0 0 0 1


execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0.8 2
execute at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0.8 5
execute at @s if entity @e[tag=!same_id,dx=0.7,type=!#svm_ep:technical] run tag @s add hit
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add hit
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.2 1