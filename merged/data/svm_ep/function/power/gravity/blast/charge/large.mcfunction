execute at @s run tp @s[scores={svm_ep.lifetime=-15..}] ^ ^ ^1.55
execute at @s run particle minecraft:dust{color:[0.5f,0f,0.5f],scale:2.0f} ~ ~ ~ 5 5 5 0 11 force @a
execute at @s run particle minecraft:dust{color:[0.1f,0f,0.1f],scale:2.5f} ~ ~ ~ 5 5 5 0 6 force @a
execute at @s run particle minecraft:dust{color:[1f,0f,1f],scale:3.0f} ~ ~ ~ 5 5 5 0 12 force @a
execute at @s run particle minecraft:dust{color:[0.75f,0.1f,0.75f],scale:4.0f} ~ ~ ~ 3 3 3 1 4 force @a

execute at @s run particle minecraft:dust{color:[18000000f,0.33f,18000000f],scale:2.0f} ~ ~ ~ 3 3 3 1 25 force @a
execute at @s run particle minecraft:dust{color:[18000000f,0.67f,18000000f],scale:3.0f} ~ ~ ~ 2 2 2 1 25 force @a
execute at @s run particle minecraft:dust{color:[18000000f,0.95f,18000000f],scale:4.0f} ~ ~ ~ 1 1 1 1 70 force @a

execute at @s run particle minecraft:dust{color:[0.05f,0.01f,0.05f],scale:4.0f} ~ ~ ~ 11 11 11 1 2 force @a
execute at @s run particle minecraft:dust{color:[0.5f,0.1f,0.5f],scale:4.0f} ~ ~ ~ 11 11 11 1 2 force @a
execute at @s run particle minecraft:dust{color:[1f,0.1f,1f],scale:4.0f} ~ ~ ~ 11 11 11 1 2 force @a
execute at @s run particle minecraft:dust{color:[1f,0.1f,1f],scale:4.0f} ~ ~ ~ 11 11 11 1 3 force @a
execute at @s run particle minecraft:dust{color:[18000000f,0.1f,18000000f],scale:4.0f} ~ ~ ~ 11 11 11 1 3 force @a
execute at @s run particle minecraft:dust{color:[0.5f,0f,0.5f],scale:2.0f} ~ ~ ~ 12 12 12 0 2 force @a
execute at @s run particle minecraft:dust{color:[0.1f,0f,0.1f],scale:2.5f} ~ ~ ~ 12 12 12 0 1 force @a
execute at @s run particle minecraft:dust{color:[1f,0f,1f],scale:3.0f} ~ ~ ~ 12 12 12 0 1 force @a



execute at @s as @e[tag=!same_id,dx=4,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[tag=!same_id,distance=..9.7,type=!#svm_ep:technical] run tag @s add hitby
execute as @e[tag=hitby] run function svm_ep:power/gravity/blast/hitby
execute at @s positioned ^-0.2 ^-0.2 ^ unless block ~ ~ ~ #svm_ep:no_physical_hitbox unless entity @e[tag=svm_ep.crack,distance=..4.5] run summon marker ~ ~ ~ {Tags:["svm_ep.crack_5","svm_ep.crack","svm_ep.crack_erase"]}
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.06 0.06 0.06 0.4 6
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.6 10
scoreboard players add @a[distance=..75,scores={svm_ep.shaking=..3}] svm_ep.shaking 1