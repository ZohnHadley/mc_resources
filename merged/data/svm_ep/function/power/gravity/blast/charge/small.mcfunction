execute at @s run tp @s[scores={svm_ep.lifetime=-15..}] ^ ^ ^0.67
function svm_ep:power/gravity/blast/tick/purple

execute at @s as @e[tag=!same_id,dx=0,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[tag=!same_id,distance=..1.7,type=!#svm_ep:technical] run tag @s add hitby
execute as @e[tag=hitby] run function svm_ep:power/gravity/blast/hitby
execute at @s positioned ^-0.2 ^-0.2 ^ run summon marker ~ ~ ~ {Tags:["svm_ep.crack_2","svm_ep.crack","svm_ep.crack_erase"]}
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.06 0.06 0.06 0.4 1
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.6 3
