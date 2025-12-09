execute at @s run tp @s ^ ^ ^0.65
execute at @s run particle minecraft:dust{color:[0f,18000000f,0.98f],scale:4f} ~ ~ ~ 2 2 2 0 55
execute at @s run particle minecraft:dust{color:[18000000f,18000000f,0f],scale:4f} ~ ~ ~ 3 3 3 0 50
execute at @s as @e[tag=!same_id,distance=..4,type=!#svm_ep:technical] run function svm_ep:power/lightning/god_slash/hitby
execute at @s positioned ^-0.2 ^-0.2 ^ run summon marker ~ ~ ~ {Tags:["svm_ep.crack_3","svm_ep.crack"]}
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.06 0.06 0.06 0.4 6