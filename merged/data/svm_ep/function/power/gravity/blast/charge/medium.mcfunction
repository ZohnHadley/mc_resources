execute at @s run tp @s[scores={svm_ep.lifetime=-15..}] ^ ^ ^0.85
execute at @s run particle minecraft:dust{color:[0.5f,0f,0.5f],scale:2f} ~ ~ ~ 2.5 2.5 2.5 0 5 force @a
execute at @s run particle minecraft:dust{color:[0.1f,0f,0.1f],scale:2.5f} ~ ~ ~ 2.5 2.5 2.5 0 5 force @a
execute at @s run particle minecraft:dust{color:[1f,0f,1f],scale:3f} ~ ~ ~ 2.5 2.5 2.5 0 5 force @a
execute at @s run particle minecraft:dust{color:[0.75f,0.1f,0.75f],scale:4f} ~ ~ ~ 1.5 1.5 1.5 1 5 force @a

execute at @s run particle minecraft:dust{color:[18000000f,0.33f,18000000f],scale:2f} ~ ~ ~ 1.75 1.75 1.75 1 20 force @a
execute at @s run particle minecraft:dust{color:[18000000f,0.67f,18000000f],scale:3f} ~ ~ ~ 1.2 1.2 1.2 1 25 force @a
execute at @s run particle minecraft:dust{color:[18000000f,0.95f,18000000f],scale:4f} ~ ~ ~ 0.85 0.85 0.85 1 100 force @a

execute at @s run particle minecraft:dust{color:[0.05f,0.01f,0.05f],scale:4f} ~ ~ ~ 11 11 11 1 2 force @a
execute at @s run particle minecraft:dust{color:[0.5f,0.1f,0.5f],scale:4f} ~ ~ ~ 11 11 11 1 2 force @a
execute at @s run particle minecraft:dust{color:[1f,0.1f,1f],scale:4f} ~ ~ ~ 11 11 11 1 3 force @a
execute at @s run particle minecraft:dust{color:[1f,0.1f,1f],scale:4f} ~ ~ ~ 11 11 11 1 4 force @a
execute at @s run particle minecraft:dust{color:[18000000f,0.1f,18000000f],scale:4f} ~ ~ ~ 11 11 11 1 6 force @a
execute at @s run particle minecraft:dust{color:[0.5f,0f,0.5f],scale:2f} ~ ~ ~ 12 12 12 0 5 force @a
execute at @s run particle minecraft:dust{color:[0.1f,0f,0.1f],scale:2.5f} ~ ~ ~ 12 12 12 0 5 force @a
execute at @s run particle minecraft:dust{color:[1f,0f,1f],scale:3f} ~ ~ ~ 12 12 12 0 5 force @a



execute at @s as @e[tag=!same_id,dx=3,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[tag=!same_id,distance=..6.7,type=!#svm_ep:technical] run tag @s add hitby
execute as @e[tag=hitby] run function svm_ep:power/gravity/blast/hitby
execute at @s positioned ^-0.2 ^-0.2 ^ run summon marker ~ ~ ~ {Tags:["svm_ep.crack_3","svm_ep.crack","svm_ep.crack_erase"]}
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.06 0.06 0.06 0.4 3
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.6 5
