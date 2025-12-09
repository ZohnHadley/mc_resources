execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:end_rod

execute unless entity @p[distance=..25] run return 0
execute if block ~ ~ ~ #svm_core:no_hitbox run return 0
execute unless block ~ ~ ~ #minecraft:wool run return 0

scoreboard players add %CHECKS svm_ep.raycast_length 1

#CHECKED BY MARKED WHILE ALREADY MARKED
execute if block ~ ~ ~ minecraft:red_wool positioned ^ ^ ^-1 if block ~ ~ ~ minecraft:red_wool run return 2
#BASIC MARKING OF CHECKED
execute if block ~ ~ ~ minecraft:white_wool run setblock ~ ~ ~ minecraft:red_wool

#CHECKED BY CONNECTED WHILE ALREADY CONNECTED
execute if block ~ ~ ~ minecraft:green_wool positioned ^ ^ ^-1 if block ~ ~ ~ minecraft:green_wool run return 2
#BASIC MARKING OF CHECKED
execute if block ^ ^ ^-1 minecraft:green_wool run setblock ~ ~ ~ minecraft:green_wool

#ON FOUND CONNECTION
execute if block ~ ~ ~ minecraft:orange_wool run setblock ^ ^ ^-1 minecraft:green_wool



execute rotated 0 -90 positioned ^ ^ ^1 run function svm_ep:system/connected_block/wool_test

execute rotated 0 0 positioned ^ ^ ^1 run function svm_ep:system/connected_block/wool_test
execute rotated 90 0 positioned ^ ^ ^1 run function svm_ep:system/connected_block/wool_test
execute rotated 180 0 positioned ^ ^ ^1 run function svm_ep:system/connected_block/wool_test
execute rotated 270 0 positioned ^ ^ ^1 run function svm_ep:system/connected_block/wool_test

execute rotated 0 90 positioned ^ ^ ^1 run function svm_ep:system/connected_block/wool_test


#execute unless block ~ ~ ~ #svm_core:no_hitbox unless entity @e[tag=svm_ep.check_connected_block,distance=..0.99] run 