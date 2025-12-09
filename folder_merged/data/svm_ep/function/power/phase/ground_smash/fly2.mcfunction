
execute at @s[scores={svm_ep.using_move=1099..1100}] anchored feet positioned ^ ^ ^0.75 if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ~ ~ ~
execute at @s anchored feet positioned ^ ^ ^0.75 unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.using_move 1098
execute at @s if entity @e[type=!#svm_ep:technical,dx=1,tag=!executor] run scoreboard players set @s svm_ep.using_move 1091

execute at @s run execute at @s run particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0.35 25
execute at @s run execute at @s run particle minecraft:cloud ~ ~0.2 ~ 0.5 0.5 0.5 0.35 25

execute at @s anchored eyes positioned ^-1.25 ^ ^ run particle minecraft:dust{color:[0f,0.8f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^1.25 ^ ^ run particle minecraft:dust{color:[0f,0.8f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^-1.25 ^ ^0.3 run particle minecraft:dust{color:[0f,0.8f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^1.25 ^ ^0.3 run particle minecraft:dust{color:[0f,0.8f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^-1.25 ^ ^0.6 run particle minecraft:dust{color:[0f,0.8f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^1.25 ^ ^0.6 run particle minecraft:dust{color:[0f,0.8f,1f],scale:2.8f} ~ ~ ~

execute at @s anchored eyes positioned ^-1.85 ^-0.45 ^ run particle minecraft:dust{color:[0f,0.5f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^1.85 ^-0.45 ^ run particle minecraft:dust{color:[0f,0.5f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^-1.85 ^-0.45 ^0.3 run particle minecraft:dust{color:[0f,0.5f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^1.85 ^-0.45 ^0.3 run particle minecraft:dust{color:[0f,0.5f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^-1.85 ^-0.45 ^0.6 run particle minecraft:dust{color:[0f,0.5f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^1.85 ^-0.45 ^0.6 run particle minecraft:dust{color:[0f,0.5f,1f],scale:2.8f} ~ ~ ~

execute at @s anchored eyes positioned ^-2.5 ^-0.75 ^-0.3 run particle minecraft:dust{color:[0f,0.25f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^2.5 ^-0.75 ^-0.3 run particle minecraft:dust{color:[0f,0.25f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^-2.5 ^-0.75 ^0 run particle minecraft:dust{color:[0f,0.25f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^2.5 ^-0.75 ^0 run particle minecraft:dust{color:[0f,0.25f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^-2.5 ^-0.75 ^0.3 run particle minecraft:dust{color:[0f,0.25f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^2.5 ^-0.75 ^0.3 run particle minecraft:dust{color:[0f,0.25f,1f],scale:2.8f} ~ ~ ~

execute at @s anchored eyes positioned ^-1.65 ^-1 ^-0.3 run particle minecraft:dust{color:[0f,0.05f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^1.65 ^-1 ^-0.3 run particle minecraft:dust{color:[0f,0.05f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^-1.65 ^-1 ^0 run particle minecraft:dust{color:[0f,0.05f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^1.65 ^-1 ^0 run particle minecraft:dust{color:[0f,0.05f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^-1.65 ^-1 ^0.3 run particle minecraft:dust{color:[0f,0.05f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^1.65 ^-1 ^0.3 run particle minecraft:dust{color:[0f,0.05f,1f],scale:2.8f} ~ ~ ~

execute at @s anchored eyes positioned ^-1.15 ^-1.4 ^-0.6 run particle minecraft:dust{color:[0f,0.05f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^1.15 ^-1.4 ^-0.6 run particle minecraft:dust{color:[0f,0.05f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^-1.15 ^-1.4 ^-0.3 run particle minecraft:dust{color:[0f,0.05f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^1.15 ^-1.4 ^-0.3 run particle minecraft:dust{color:[0f,0.05f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^-1.15 ^-1.4 ^0 run particle minecraft:dust{color:[0f,0.05f,1f],scale:2.8f} ~ ~ ~
execute at @s anchored eyes positioned ^1.15 ^-1.4 ^0 run particle minecraft:dust{color:[0f,0.05f,1f],scale:2.8f} ~ ~ ~
